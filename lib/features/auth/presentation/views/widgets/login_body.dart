import 'package:cash_app/constant.dart';
import 'package:cash_app/core/utils/styles.dart';
import 'package:cash_app/features/auth/presentation/views/create_view.dart';
import 'package:cash_app/features/check_user/presentation/views/widgets/custom_button.dart';
import 'package:cash_app/features/home_layout/presentaion/views/home_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../check_user/presentation/views/widgets/custom_text_form_field.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('${AssetsData.logo}'),
            const Text(
              "مرحبًا بعودتك",
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "تسجيل الدخول في حسابك",
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField("الهاتف", const Icon(Icons.phone)),
            const SizedBox(height: 20),
            CustomTextFormField("كلمة المرور", const Icon(Icons.visibility_outlined)),
            InkWell(
                child: Padding(
              padding: const EdgeInsets.only(left: 6, right: 6, top: 5),
              child: Row(
                children: [
                  const Text("نسيت كلمة المرور", style: Styles.textStyle15),
                ],
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeLayoutScreen(),
                    ),
                  );
                },
                child: CustomButtonWidget(
                    Colors.white, "تسجيل الدخول", primaryColor, primaryColor)),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: const Text("انشاء حساب جديد", style: Styles.textStyle16),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const CreateView()));
                  },
                ),
                const Text("  ليس لديك حساب؟"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
