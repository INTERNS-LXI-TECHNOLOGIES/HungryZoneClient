import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:hungryzone/const/const.dart';

import 'main_screen.dart';
import 'signup_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            children: [
              /// Login & Welcome back
              Container(
                height: 210,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    /// LOGIN TEXT
                    Text('Hunger Zone',
                        style: TextStyle(color: Colors.white, fontSize: 32.5)),
                    SizedBox(height: 7.5),

                    /// WELCOME
                    Text('Login',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      const SizedBox(height: 60),

                      /// Text Fields
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  blurRadius: 20,
                                  spreadRadius: 10,
                                  offset: const Offset(0, 10)),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            /// EMAIL
                            TextField(
                              style: TextStyle(fontSize: 15),
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  isCollapsed: false,
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                            ),
                            Divider(color: Colors.black54, height: 1),

                            /// PASSWORD
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  isCollapsed: false,
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 35),

                      /// LOGIN BUTTON
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MainScreen()));
                        },
                        height: 45,
                        minWidth: 240,
                        textColor: Colors.white,
                        color: Colors.green.shade700,
                        shape: const StadiumBorder(),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Center(
                                child: Text('Forget password ?'),
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// TEXT
                      // const Text(
                      //   'Login with SNS',
                      //   style: TextStyle(
                      //       color: Colors.grey,
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.bold),
                      // ),

                      //SIGNUP BUTTON
                      const SizedBox(height: 15),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                        },
                        height: 45,
                        minWidth: 240,
                        textColor: Colors.white,
                        color: Colors.green.shade700,
                        shape: const StadiumBorder(),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 25),

                      const SizedBox(height: 50),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
