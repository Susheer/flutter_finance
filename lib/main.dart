import 'package:flutter/material.dart';
import 'package:flutter_finance_app/pages/home_page.dart';
import 'package:flutter_finance_app/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_finance_app/theme/colors.dart' as AppColors;

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
        fontFamily: GoogleFonts.poppins().fontFamily,
        scaffoldBackgroundColor: AppColors.secondary,
        primaryColor: AppColors.primary,
      ),
      home: const LoginPage(),
    );
  }
}
