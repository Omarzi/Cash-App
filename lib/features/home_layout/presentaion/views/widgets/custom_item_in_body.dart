import 'package:cash_app/constant.dart';
import 'package:cash_app/features/home_layout/presentaion/views/services_screen.dart';
import 'package:flutter/material.dart';

class ItemInBody extends StatelessWidget {
  void Function()? onTap;

  // final IconData iconData;
  // final String items;
  ItemInBody({
    Key? key,
    required this.onTap,
    // required this.iconData,
    // required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            elevation: 5,
            shadowColor: primaryColor.withOpacity(.4),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            child: SizedBox(
              height: 140,
              width: 150,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icons[index],
                      color: Colors.grey[700],
                      size: 22,
                    ),
                    Text(
                      items[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
