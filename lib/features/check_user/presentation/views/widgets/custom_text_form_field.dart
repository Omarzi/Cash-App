
import 'package:cash_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  String text;
  Widget icon;
  CustomTextFormField(this.text,this.icon, {super.key});
  @override
  Widget build(BuildContext context) {
    return
      Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          // textAlign: TextAlign.right,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],suffixIcon: icon,
            suffixIconColor: primaryColor,
            hintText: text,
            enabledBorder: OutlineInputBorder(
              borderSide:  const BorderSide(
                  width: 2,
                  color: primaryColor,
              ),
              borderRadius:
              BorderRadius.circular(15),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:  const BorderSide(
                width: 1,
                color: Colors.red
              ),
              borderRadius:
              BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:  const BorderSide(
                width: 1,
                color:primaryColor
              ),
              borderRadius:
              BorderRadius.circular(15),
            ),
          ),
        ),
      );
  }
}
