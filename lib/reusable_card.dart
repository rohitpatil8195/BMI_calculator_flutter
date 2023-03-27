import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color customColor;
  final Widget cardChild;
  const ReusableCard({super.key,required this.customColor,required this.cardChild,});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration:BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: cardChild,
    );

  }
}