import 'package:cash_app/features/splash/presentation/views/splash_view_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.alikeAngularTextTheme(),
        ),
         home: const SplashView(),
      ),
    );
  }
}
