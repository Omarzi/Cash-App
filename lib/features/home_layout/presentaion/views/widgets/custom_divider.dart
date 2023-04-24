import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 48, vertical: 10),
      child: Divider(
        color: Colors.white,
        height: 2,
        thickness: 1,
      ),
    );
  }
}
