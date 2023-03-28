

import 'dart:math';


class BmiBrain{
  final int height;
  final int weight;
  BmiBrain(this.height, this.weight);

 late double _bmi;
  String bmiCalculator(){
    _bmi=weight/pow(height/100, 2);
        return _bmi.toStringAsFixed(1);
  }

   String getResult(){
      if(_bmi>=25){
        return 'OverWeight';
      }else if(_bmi>18.5){
        return 'Normal';
      }else{
        return 'UnderWeight';
      }
   }

   String getInterpretation(){
     if(_bmi>=25){
       return 'You have a higher than normal body weight, try exercise more';
     }else if(_bmi>18.5){
       return 'You have a normal body weight,great job!';
     }else{
       return 'You have a lower than normal body weight.You can eat more';
     }
   }
}