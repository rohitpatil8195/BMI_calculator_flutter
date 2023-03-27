import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
const bottomContainerHeight=80.0;
const activeCardColor=Color(0xFF323244);
const inActiveCardColor=Color(0xFF111328);
const bottomCardColor=Color(0xFFB15555);
bool isSelectedMale=false;
class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
Color maleCardColor=inActiveCardColor;
Color femaleCardColor=inActiveCardColor;
  void onSelectGender(int gender){
    if(gender==1) {
      setState(() {
        maleCardColor==inActiveCardColor ? {
          maleCardColor = activeCardColor,
          femaleCardColor = inActiveCardColor
        }: {
          maleCardColor = inActiveCardColor,
          femaleCardColor=activeCardColor
        };
      });

    }else{
      setState(() {
        femaleCardColor==inActiveCardColor ?
        {
          femaleCardColor = activeCardColor,
          maleCardColor = inActiveCardColor,
        }
            :
        {
          femaleCardColor = inActiveCardColor,
          maleCardColor = activeCardColor,
        };
      });

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2135),
      appBar: AppBar(
        title:const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
         Expanded(
           child: Row(
           children:   [
           Expanded(
             child: GestureDetector(
               onTap:(){
                 onSelectGender(1);
               },
               child: ReusableCard(customColor:maleCardColor,
                   cardChild:const ChildReusableComponent(
                       myIcon: FontAwesomeIcons.mars,
                       myText: 'MALE',
                   )
               ),
             ),
           ),
             Expanded( child:  GestureDetector(
                 onTap:(){onSelectGender(2);},
                 child:   ReusableCard(
                     customColor:femaleCardColor,
                     cardChild:const ChildReusableComponent(
                       myIcon: FontAwesomeIcons.venus,
                       myText: 'FEMALE',
                     )
                 ),
               ),
             ),
            ]
              ),
         ),
           Expanded(
             child: Row(
               children: const [
               //  Expanded(child: ReusableCard(customColor:activeCardColor)),
               ],
             ),
           ),

          Expanded(
            child: Row(
                children:  const [
                //  Expanded(child: ReusableCard(customColor:activeCardColor)),
                //  Expanded(child: ReusableCard(customColor:activeCardColor)),
                  ]
            ),
          ),
          Container(
            color:bottomCardColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),

    );
  }
}

