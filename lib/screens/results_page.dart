
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.bmiResult, required this.resultString, required this.interpretation});
final String bmiResult;
final String resultString;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Expanded(
               child: Container(
                 padding: const EdgeInsets.only(left: 10,top: 10),
             child: const Text('Your Result',style: kTitleTextStyle,
             ),
           ),
           ),
            Expanded(
             flex: 5,
             child: ReusableCard(
               customColor: kActiveCardColor,
               cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children:  [
                   Text(resultString.toUpperCase(),style:kResultTextStyle ,),
                   Text(bmiResult,style:kBmiTextStyle ,),
                    Text(
                       interpretation,style:kBodyText ,textAlign: TextAlign.center,)
                 ],
               ),
             ),
           ),
           BottomButton(
             onClick:(){
               Navigator.pop(context);
             },
             buttonTitle:'RE-Calculate',
           )
         ],
         
      )
    );
  }
}
