import 'package:flutter/material.dart';

const labelTextStyle=TextStyle(fontSize: 18,color: Color(0xFF8D8E98));

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
        Text(myText,style: labelTextStyle,)
      ],
    );
  }
}
