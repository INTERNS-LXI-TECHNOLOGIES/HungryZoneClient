// ignore_for_file: unnecessary_const, no_leading_underscores_for_local_identifiers

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungryzone/database/model/operations.dart';
import 'package:hungryzone/database/model/user_model.dart';
import 'package:hungryzone/presentation/screens/login_screen.dart';
import 'package:openapi/openapi.dart';

import '../../const/const.dart';
import '../bloc/sign_up/signup_bloc.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "sign_up_page";

  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

final _validKey = GlobalKey<FormState>();
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool isValid = false;

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is RegisterLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Registration Sucsess'),
                backgroundColor: Color.fromARGB(255, 252, 252, 252),
                behavior: SnackBarBehavior.floating,
              ),
            );
            Future.delayed(const Duration(seconds: 1));
            Navigator.of(context).pop();
            clearController();
            MaterialPageRoute(builder: (context) => const LoginPage());
          } else if (state is RegisterLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Fill forms'),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
            clearController();
          } else if (state is RegisterLoadError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Registration Failed'),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
            log('error :${state.error!}');
            clearController();
          }
        },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green.shade900,
                  kGreen,
                  Colors.green.shade400,
                ],
                begin: Alignment.topRight,
                end: Alignment.centerLeft,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        // #signup_text
                        Text(
                          "Hungry Zone",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 32.5),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        // #welcome
                        Text(
                          "Sign Up",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 1.5,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),

                      // #text_field
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: MediaQuery.of(context).size.width,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 20,
                                spreadRadius: 10,
                              )
                              // offset: const Offset(0, 10))
                            ]),
                        child: textFields(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // #signup_button
                      buttonSignUp(context),
                      const SizedBox(
                        height: 15,
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  MaterialButton buttonSignUp(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        bool isSignup = _validKey.currentState!.validate();
        debugPrint(isSignup.toString());
        if (isSignup == true) {
          final registerUser = onUserAdd();
          BlocProvider.of<SignupBloc>(context)
              .add(RegisterUserEvent(user: registerUser));
          debugPrint('..............triggred');
          clearController();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("signup not done"),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
          clearController();
        }
      },
      height: 45,
      minWidth: 240,
      shape: const StadiumBorder(),
      color: Colors.green.shade700,
      child: const Text(
        "Sign Up",
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  clearController() {
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
    phoneNumberController.clear();
    passwordController.clear();
  }

  Form textFields() {
    return Form(
      key: _validKey,
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: firstNameController,
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'enter your name';
                  } else {
                    isValid = true;

                    return '';
                  }
                },
                decoration: const InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    hintText: "First Name",
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
              const Divider(
                thickness: 0.5,
                height: 10,
              ),
              TextFormField(
                controller: lastNameController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    hintText: "Last Name",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              const Divider(
                thickness: 0.5,
                height: 10,
              ),
              TextFormField(
                controller: emailController,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = RegExp(pattern);
                  if (value!.isEmpty || value == null) {
                    return 'enter your mail id';
                  } else if ((!regExp.hasMatch(value))) {
                    return 'enter valid mail id';
                  } else {
                    isValid = true;

                    return '';
                  }
                },
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              const Divider(
                thickness: 0.5,
                height: 10,
              ),
              TextFormField(
                controller: phoneNumberController,
                validator: (value) {
                  String pattern =
                      r'^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$';
                  RegExp regExp = RegExp(pattern);
                  if (value!.isEmpty || value == null) {
                    return 'enter your mail id';
                  } else if ((!regExp.hasMatch(value))) {
                    return 'enter valid phone number';
                  } else {
                    isValid = true;

                    return '';
                  }
                },
                decoration: const InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    hintText: "Phone",
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
              const Divider(
                thickness: 0.5,
                height: 10,
              ),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'enter your password';
                  } else {
                    isValid = true;

                    return '';
                  }
                },
                decoration: const InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ManagedUserVM onUserAdd() {
    final _firstName = firstNameController.text;
    final _lastName = lastNameController.text;
    final _emailId = emailController.text;
    final _phoneNumber = phoneNumberController.text;
    final _passwords = passwordController.text;

    ManagedUserVMBuilder userBuilder = ManagedUserVMBuilder();
    userBuilder.firstName = _firstName;
    userBuilder.lastName = _lastName;
    userBuilder.email = _emailId;
    userBuilder.password = _passwords;
    userBuilder.login = _phoneNumber;

    ManagedUserVM signupUser = userBuilder.build();
    return signupUser;
  }
}
