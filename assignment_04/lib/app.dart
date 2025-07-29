import 'package:assignment_04/ui/screens/Sign-Up-Screen.dart';
import 'package:assignment_04/ui/screens/add_new_task_screen.dart';
import 'package:assignment_04/ui/screens/change_password_screen.dart';
import 'package:assignment_04/ui/screens/forgot_passaword_email_screen.dart';
import 'package:assignment_04/ui/screens/main_nav_bar_holder_screen.dart';
import 'package:assignment_04/ui/screens/pin_verification_screen.dart';
import 'package:assignment_04/ui/screens/sign_in_screen.dart';
import 'package:assignment_04/ui/screens/splash_screen.dart';
import 'package:assignment_04/ui/screens/update_profile_screen.dart';
import 'package:flutter/material.dart';




class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  static final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromWidth(double.maxFinite),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.symmetric(vertical: 12),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.green),
        ),
      ),
      initialRoute: '/',
      routes: {
        SplashScreen.name: (context) => const SplashScreen(),
        SignInScreen.name: (context) => const SignInScreen(),
        SignUpScreen.name: (context) => const SignUpScreen(),
        ForgotPaswordEmailScreen.name: (context) => const ForgotPaswordEmailScreen(),
        PinVerificationScreen.name: (context) => const PinVerificationScreen(email: ''),
        changePasswordScreen.name: (context) => const changePasswordScreen(),
        MainNavBarHolderScreen.name: (context) => const MainNavBarHolderScreen(),
        AddNewTaskScreen.name: (context) => const AddNewTaskScreen(),
        UpdateProfileScreen.name: (context) => const UpdateProfileScreen(),
      },
    );
  }
}
