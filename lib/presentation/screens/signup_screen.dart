// ignore_for_file: unnecessary_const, no_leading_underscores_for_local_identifiers

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
TextEditingController activeKeyController = TextEditingController();
bool isValid = false;

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is RegisterLoaded) {
            log("loaded state =>${state.isLoad}");
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Registration Sucsess'),
                backgroundColor: Color.fromARGB(255, 252, 252, 252),
                behavior: SnackBarBehavior.floating,
              ),
            );
            Future.delayed(const Duration(seconds: 1));
            _displayTextInputDialog(context);
            // Navigator.of(context).pop();
            clearController();
            //
          } else if (state is ActivateAccountLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Account Activated'),
                backgroundColor: Color.fromARGB(255, 252, 252, 252),
                behavior: SnackBarBehavior.floating,
              ),
            );
            Future.delayed(const Duration(seconds: 1));
            MaterialPageRoute(builder: (context) => const LoginPage());
          } else if (state is RegisterLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Fill forms'),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
            // clearController();
          } else if (state is RegisterLoadError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Registration Failed'),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
            log('error :${state.error!}');
            // clearController();
          }
        },
        child: SingleChildScrollView(
          child: Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
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
                  Container(
                    // height: double.infinity,
                    // width: double.infinity,
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
                  SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.width * 2),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * 2,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),

                            // #text_field
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width / 1.5,
                                  minHeight:
                                      MediaQuery.of(context).size.width / 5),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                // height: MediaQuery.of(context).size.height / 2.5,
                                //width: double.infinity,
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
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 8,
                            ),

                            // #signup_button
                            buttonSignUp(context),
                            // const SizedBox(
                            //   height: 15,
                            // ),

                            // const SizedBox(
                            //   height: 15,
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('TextField in Dialog'),
            content: TextField(
              //  onChanged: (value) {
              //    setState(() {
              //      valueText = value;
              //    });
              //  },
              controller: activeKeyController,
              decoration: const InputDecoration(hintText: "Enter Key"),
            ),
            actions: <Widget>[
              MaterialButton(
                color: kGreen,
                textColor: Colors.white,
                child: const Text('OK'),
                onPressed: () {
                  BlocProvider.of<SignupBloc>(context).add(ActivateAccountEvent(
                      activeKey: activeKeyController.text));
                },
              ),
            ],
          );
        });
  }

  MaterialButton buttonSignUp(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        bool isSignup = _validKey.currentState!.validate();
        debugPrint("isSignup=>$isSignup");
        if (isSignup == true) {
          final registerUser = onUserAdd();
          BlocProvider.of<SignupBloc>(context)
              .add(RegisterUserEvent(user: registerUser));
          debugPrint('..............triggred');
          //  clearController();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("signup not done"),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
          // clearController();
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            controller: firstNameController,
            validator: (value) {
              if (value!.isEmpty || value == null) {
                return 'enter your name';
              } else {
                isValid = true;

                return null;
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

                return null;
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

                return null;
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

                return null;
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
    userBuilder.activated = true;
    userBuilder.langKey = 'en';

    ManagedUserVM signupUser = userBuilder.build();
    return signupUser;
  }
}
