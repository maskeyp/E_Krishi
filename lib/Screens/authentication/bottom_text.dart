import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomTextWidget extends StatelessWidget {
  Function()? onTap;
   String? text1;
   String ?text2;

   BottomTextWidget({Key? key, this.onTap, this.text1, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return      GestureDetector(
      onTap: onTap,
      child: RichText(text: TextSpan(children: [
        TextSpan(text: text1, style: TextStyle(color: Colors.black)),
        TextSpan(text: " $text2", style: TextStyle(color: Colors.blue))

      ])),
    );
  }
}
