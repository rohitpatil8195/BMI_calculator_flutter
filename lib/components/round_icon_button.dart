import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onClicked;
  const RoundIconButton({super.key, required this.icon,required this.onClicked,});
  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
      elevation: 0,
      onPressed: onClicked,
      shape:const CircleBorder(),
      fillColor:const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(width: 54.0,height: 54.0),
      child:Icon(icon),
    );
  }
}
