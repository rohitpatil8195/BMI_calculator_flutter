

import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function()? onClick;
  final String buttonTitle;
  const BottomButton({super.key, required this.onClick, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        color:kBottomCardColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 10),
        height: kBottomContainerHeight,
        child: Center(child: Text(buttonTitle,style: kLargeButtonTextStyle,)),
      ),
    );
  }
}