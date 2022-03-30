import 'package:flutter/material.dart';
import 'custom_text.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String? text;
  Color? txtColor;
  Color? bgColor;
  Color? shadowColor;
  Function()? onTap;

  CustomButton(
      {Key? key,
      this.text,
      this.txtColor,
      this.bgColor,
      this.shadowColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PhysicalModel(
        color: Colors.grey.withOpacity(.4),
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgColor ?? Colors.green[700],
            ),
            child: Container(
              margin: EdgeInsets.all(14),
              alignment: Alignment.center,
              child: CustomText(
                text: text,
                color: txtColor ?? Colors.white,
                size: 22,
                weight: FontWeight.normal,
              ),
            )),
      ),
    );
  }
}
