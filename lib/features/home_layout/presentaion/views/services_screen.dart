import 'package:cash_app/constant.dart';
import 'package:cash_app/features/home_layout/presentaion/views/package_renewal.dart';
import 'package:cash_app/features/home_layout/presentaion/views/recharge_card.dart';
import 'package:cash_app/features/home_layout/presentaion/views/recharge_the_balance.dart';
import 'package:cash_app/features/home_layout/presentaion/views/widgets/custom_app_bar.dart';
import 'package:cash_app/features/home_layout/presentaion/views/widgets/custom_drawer.dart';
import 'package:cash_app/features/home_layout/presentaion/views/widgets/custom_item_in_body.dart';
import 'package:flutter/material.dart';

List items = ['شحن الرصيد', 'كرت شحن', 'تجديد الباقات'];

List<IconData> icons = [
  Icons.send,
  Icons.add_card_rounded,
  Icons.add_card_rounded,
];

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: CustomAppBar(text: 'لخدمات الدفع الألكتروني'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            customChargeNow(),
            const SizedBox(height: 25),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ItemInBody(
                  // iconData: icons,
                  // items: items,
                  onTap: () {
                if (icons[0] == Icons.send) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RechargeTheBalance(),
                    ),
                  );
                } else if (icons[1] == Icons.add_card_rounded) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RechargeCard(),
                    ),
                  );
                } else if (icons[2] == Icons.add_card_rounded) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PackageRenewal(),
                    ),
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget customChargeNow() {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 2, top: 20),
      elevation: 5,
      shadowColor: primaryColor.withOpacity(.6),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      child: Container(
        height: 120,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'الرصيد الحالي المتاح',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              ' 200 جنيه',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget itemsInBody(void Function()? onTap) {
  //   return GestureDetector(
  //     onTap: onTap,
  //     child: GridView.builder(
  //       physics: const NeverScrollableScrollPhysics(),
  //       shrinkWrap: true,
  //       itemCount: 3,
  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 2,
  //         mainAxisSpacing: 10,
  //         crossAxisSpacing: 20,
  //       ),
  //       itemBuilder: (context, index) {
  //         return Card(
  //           color: Colors.white,
  //           margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
  //           elevation: 5,
  //           shadowColor: primaryColor.withOpacity(.4),
  //           shape: const RoundedRectangleBorder(
  //             borderRadius: BorderRadius.all(
  //               Radius.circular(14),
  //             ),
  //           ),
  //           child: SizedBox(
  //             height: 140,
  //             width: 150,
  //             child: Center(
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Icon(
  //                     icons[index],
  //                     color: Colors.grey[700],
  //                     size: 22,
  //                   ),
  //                   Text(
  //                     items[index],
  //                     style: TextStyle(
  //                       fontWeight: FontWeight.w500,
  //                       fontSize: 18,
  //                       color: Colors.grey[700],
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
}
