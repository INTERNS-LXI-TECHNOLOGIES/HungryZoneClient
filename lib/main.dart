import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hungryzone/database/model/user_model.dart';
import 'package:hungryzone/presentation/bloc/home_bloc/home_screen_bloc.dart';
import 'package:hungryzone/presentation/bloc/password/password_bloc.dart';
import 'package:hungryzone/presentation/bloc/sign_up/signup_bloc.dart';
import 'package:hungryzone/presentation/screens/home_screen.dart';
import 'package:hungryzone/presentation/screens/login_screen.dart';

import 'presentation/bloc/authentication_bloc/auth_bloc.dart';

import 'presentation/screens/splash_screen.dart';

//eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyIiwiYXV0aCI6IlJPTEVfVVNFUiIsImV4cCI6MTY3MDI1MDI2NH0.rBn5dwmEVQO8heeTbH1uH7ghWcOJa63dj_LfdFJNjfImi-G0W-LFw7CneTbcYU6xzPx6_d7ShdV5ql_7AwZF8A
const SHARED_PREFERENCES_KEY = 'User login auth';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitDown]);
  Hive.initFlutter();
  if (!Hive.isAdapterRegistered(UserModelAdapter().typeId)) {
    Hive.registerAdapter(UserModelAdapter());
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.dark,
    //     statusBarIconBrightness: Brightness.dark));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => SignupBloc(),
        ),
        BlocProvider(
          create: (context) => HomeScreenBloc(),
        ),
        BlocProvider(
          create: (context) => PasswordBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hungry Zone',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Directionality(
              textDirection: TextDirection.rtl, child: SplashScreen()),
          routes: {
            'splashscreen': ((context) => const SplashScreen()),
            'homescreen': (context) => const HomeScreen(),
            'loginscreen': (context) => const LoginPage(),
          }),
    );
  }
}
