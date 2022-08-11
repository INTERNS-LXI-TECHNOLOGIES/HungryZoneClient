// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:hungryzone/database/model/operations.dart';
import 'package:hungryzone/database/model/user_model.dart';

import '../../const/const.dart';

class SignUpPage extends StatefulWidget {
  static const String id = "sign_up_page";

  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                flex: 2,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      // #signup_text
                      Text(
                        "Hunger Zone",
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
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 120,
                    ),

                    // #text_field
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 20,
                                spreadRadius: 10,
                                offset: const Offset(0, 10))
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: firstNameController,
                            decoration: const InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: "First Name",
                                hintStyle: const TextStyle(color: Colors.grey)),
                          ),
                          const Divider(
                            thickness: 0.5,
                            height: 10,
                          ),
                          TextField(
                            controller: lastNameController,
                            decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: "Last Name",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                          const Divider(
                            thickness: 0.5,
                            height: 10,
                          ),
                          TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                          const Divider(
                            thickness: 0.5,
                            height: 10,
                          ),
                          TextField(
                            controller: phoneNumberController,
                            decoration: const InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: "Phone",
                                hintStyle: const TextStyle(color: Colors.grey)),
                          ),
                          const Divider(
                            thickness: 0.5,
                            height: 10,
                          ),
                          TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: const TextStyle(color: Colors.grey)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    // #signup_button
                    MaterialButton(
                      onPressed: () {
                        onUserAdd();
                      },
                      height: 45,
                      minWidth: 240,
                      shape: const StadiumBorder(),
                      color: Colors.green.shade700,
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      height: 45,
                      minWidth: 240,
                      shape: const StadiumBorder(),
                      color: Colors.green.shade700,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
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
    );
  }

  Future<void> onUserAdd() async {
    final _firstName = firstNameController.text;
    final _lastName = lastNameController.text;
    final _emailId = emailController.text;
    final _phoneNumber = phoneNumberController.text;
    final _passwords = passwordController.text;
    if (_firstName.isEmpty ||
        _lastName.isEmpty ||
        _emailId.isEmpty ||
        _phoneNumber.isEmpty ||
        _passwords.isEmpty) {
      return;
    } else {
      final _user = UserModel(
          firstName: _firstName,
          lastName: _lastName,
          emailId: _emailId,
          phoneNumber: _phoneNumber,
          passwords: _passwords);
      addUser(_user);
    }
  }
}
