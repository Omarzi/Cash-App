import 'package:cash_app/features/home_layout/presentaion/views/widgets/custom_app_bar.dart';
import 'package:cash_app/features/home_layout/presentaion/views/widgets/custom_item_in_body.dart';
import 'package:flutter/material.dart';

class RechargeTheBalance extends StatelessWidget {
  const RechargeTheBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Directionality(textDirection: TextDirection.rtl, child: CustomAppBar(text: 'أختر الشبكة',)),
        preferredSize: Size(double.infinity, 60),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ItemInBody(onTap: () {},),
          ],
        ),
      ),
    );
  }
}
