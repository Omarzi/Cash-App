import 'package:cash_app/constant.dart';
import 'package:cash_app/core/utils/assets.dart';
import 'package:cash_app/core/utils/styles.dart';
import 'package:cash_app/features/auth/presentation/views/create_view.dart';
import 'package:cash_app/features/auth/presentation/views/login_view.dart';
import 'package:cash_app/features/auth/presentation/views/widgets/login_body.dart';
import 'package:cash_app/features/check_user/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CheckUserBody extends StatelessWidget {
  const CheckUserBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 90),
      child: Column(
        children: [

          Image.asset(
            AssetsData.logo
          ),

          const SizedBox(height: 30,),
          const Text("تطبيق مالي يمكنك الوثوق به",style: Styles.textStyle20,),
              const SizedBox(height: 50,),
          InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginView()));}
          ,child: CustomButtonWidget(const Color(0xffffffff),"تسجيل الدخول" ,primaryColor,primaryColor)),
          const SizedBox(height: 15,),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateView()));
              },
              child: CustomButtonWidget(primaryColor,"انشاء حساب جديد" , const Color(0xffffffff),primaryColor))


        ],
      ),
    );
  }
}
