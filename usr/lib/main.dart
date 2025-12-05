import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/utils/app_colors.dart';

void main() {
  runApp(const LoloBadmintonApp());
}

class LoloBadmintonApp extends StatelessWidget {
  const LoloBadmintonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOLO Badminton Academy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Default flutter font, can be changed later
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
