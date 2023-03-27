import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_content.dart';


    enum Gender{
       male,
       female,
       other
    }
class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

Color maleCardColor=kInActiveCardColor;
Color femaleCardColor=kInActiveCardColor;
 Gender selectedGender=Gender.other;
 double height=180;


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
             child: ReusableCard(
                 onPress: (){
                   setState(() {
                     selectedGender=Gender.male;
                   });
                 },
                 customColor:
             selectedGender ==Gender.male ? kActiveCardColor :kInActiveCardColor,
                 cardChild:const ChildReusableComponent(
                     myIcon: FontAwesomeIcons.mars,
                     myText: 'MALE',
                 )
             ),
           ),
             Expanded( child:  ReusableCard(
                 onPress: (){
                   setState(() {
                     selectedGender=Gender.female;
                   });
                 },
                 customColor:
                 selectedGender ==Gender.female ? kActiveCardColor :kInActiveCardColor,
                 cardChild:const ChildReusableComponent(
                   myIcon: FontAwesomeIcons.venus,
                   myText: 'FEMALE',
                 )
             ),
             ),
            ]
              ),
         ),
           Expanded(
             child: Row(
               children:  [
                 Expanded(child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         const Text('HEIGHT',style: kLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children:  [
                              Text(height.toInt().toString(),
                              style: kNumTextStyle,
                              ),
                              const Text('CM',style: kLabelTextStyle,)
                          ],
                        ),

                           SliderTheme(
                             data:SliderTheme.of(context).copyWith(
                               activeTrackColor: Colors.white,
                                 thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
                                overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
                                thumbColor:  const Color(0xFFB15555),
                                 overlayColor:const Color(0x29B15555),
                                 inactiveTrackColor: const Color(0xff8d8e98),
                             ),
                             child: Slider(
                                value:height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height=newValue;
                                  });
                                },
                          ),
                           ),

                      ],
                    ),
                 customColor: kInActiveCardColor,
                 )),
               ],
             ),
           ),

          Expanded(
            child: Row(
                children:  const [
                 Expanded(child: ReusableCard(customColor:kInActiveCardColor)),
               Expanded(child: ReusableCard(customColor:kInActiveCardColor)),
                  ]
            ),
          ),
          Container(
            color:kBottomCardColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),

    );
  }
}

