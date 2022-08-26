// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:hungryzone/main.dart';
import 'package:hungryzone/presentation/screens/home_screen.dart';
import 'package:hungryzone/presentation/screens/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Image(
        image: AssetImage('assets/images/logo.jpg'),
        fit: BoxFit.fill,
      )),
    );
  }

  Future changeScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  Future<void> checkLogin() async {
    final _sharedPrefereence = await SharedPreferences.getInstance();
    final _userLogin = _sharedPrefereence.getBool(SHARED_PREFERENCES_KEY);
    if (_userLogin == null || _userLogin == false) {
      await Future.delayed(const Duration(seconds: 3));
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPage()));
    } else {
      await Future.delayed(const Duration(seconds: 2));
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainScreen()));
    }
  }
}
