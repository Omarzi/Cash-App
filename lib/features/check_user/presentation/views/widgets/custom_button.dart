import 'package:cash_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
     Color color;
     Color bgColor;
     Color borderColor;
     String text;

     CustomButtonWidget(this.color,this.text,this.bgColor,this.borderColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor,width: 2),
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(text,style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: color,
        )),
      ),
    );
  }
}
