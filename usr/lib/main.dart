import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/login_screen.dart';
import 'package:couldai_user_app/screens/dashboard_screen.dart';
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
          background: AppColors.background,
        ),
        useMaterial3: true,
        fontFamily: 'Poppins', 
        scaffoldBackgroundColor: AppColors.background,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          headlineLarge: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontFamily: 'Poppins'),
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
