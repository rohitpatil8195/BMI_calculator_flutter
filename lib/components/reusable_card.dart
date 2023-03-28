import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? customColor;
  final Widget? cardChild;
  final void Function()? onPress;
  const ReusableCard({super.key, this.customColor, this.cardChild,  this.onPress,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap:onPress,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration:BoxDecoration(
            color: customColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: cardChild,
      ),
    );

  }
}