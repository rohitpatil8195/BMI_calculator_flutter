import 'package:flutter/material.dart';
import '../constants.dart';


class ChildReusableComponent extends StatelessWidget {
  final IconData myIcon;
  final String myText;
  const ChildReusableComponent({super.key,required this.myIcon,required this.myText,});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  <Widget>[
        Icon(myIcon,
          size: 70.0,
        ),
        const SizedBox(height: 10,),
        Text(myText,style: kLabelTextStyle,)
      ],
    );
  }
}
