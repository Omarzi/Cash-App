import 'package:cash_app/constant.dart';
import 'package:cash_app/core/utils/styles.dart';
import 'package:cash_app/features/check_user/presentation/views/check_user_view_data.dart';
import 'package:cash_app/features/check_user/presentation/views/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../check_user/presentation/views/widgets/custom_text_form_field.dart';

class CreateBody extends StatelessWidget {
  const CreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,right: 10),
              child: Row(
                children: [
                  CircleAvatar(backgroundColor: primaryColor,
                    radius: 20,
                    child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckUserView()));},
                      icon: Icon(Icons.arrow_back,color: Colors.white,),),
                  ),
                ],
              ),
            ),
            Image.asset(
                '${AssetsData.logo}'
            ),
            Text("انشاء حساب جديد",style: Styles.textStyle30,),
            SizedBox(height: 5,),
            CustomTextFormField("الأسم",Icon(Icons.person)),
            SizedBox(height: 10,),
            CustomTextFormField("الهاتف",Icon(Icons.phone)),
            SizedBox(height:10),
            CustomTextFormField("كلمة المرور",Icon(Icons.visibility_outlined)),
            SizedBox(height:10),
            CustomTextFormField("تأكيد كلمة المرور",Icon(Icons.visibility_outlined)),
            SizedBox(height: 10,),
            CustomButtonWidget(Colors.white, "انساء حساب جديد", primaryColor, primaryColor),

          ],
        ),
      ),
    );
  }
}
