import 'package:flutter/material.dart';
import 'package:flutter_finance_app/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theams/colors.dart' as AppColors;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme().copyWith(
              alignLabelWithHint: true,
              iconColor: AppColors.black,
              hintStyle: const TextStyle(color: AppColors.black),
              border: InputBorder.none),
          primaryColor: AppColors.secondary,
          fontFamily: GoogleFonts.poppins().fontFamily,
          scaffoldBackgroundColor: AppColors.secondary,
        ),
        home: const LoginPage());
  }
}
