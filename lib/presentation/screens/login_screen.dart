import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hungryzone/const/const.dart';
import 'package:hungryzone/presentation/bloc/sign_up/signup_bloc.dart';
import 'package:hungryzone/presentation/screens/forgot_password_screen.dart';
import 'package:hungryzone/presentation/screens/home_screen.dart';
import 'package:openapi/openapi.dart';

import '../bloc/authentication_bloc/auth_bloc.dart';
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
  bool isNumberValid = true;
  final GlobalKey<FormState> _validKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccessState) {
            final token = state.token;
            debugPrint(token.toString());
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => MainScreen()));
          } else if (state is AuthLaodingState) {
          } else if (state is AuthErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Authentication Failed'),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
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
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 370,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('Hunger Zone',
                          style:
                              TextStyle(color: Colors.white, fontSize: 32.5)),
                      SizedBox(height: 7.5),
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
                    child: Form(
                      key: _validKey,
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
                              children: [
                                /// EMAIL
                                TextFormField(
                                  style: const TextStyle(fontSize: 15),
                                  keyboardType: TextInputType.phone,
                                  controller: phoneNumberController,
                                  decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      border: InputBorder.none,
                                      hintText: 'Phonenumber',
                                      isCollapsed: false,
                                      hintStyle: TextStyle(
                                          fontSize: 14, color: Colors.grey)),
                                  validator: (value) {
                                    String pattern =
                                        r'^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$';
                                    RegExp regExp = RegExp(pattern);
                                    if (value == null || value.isEmpty) {
                                      isNumberValid = false;
                                      //return 'enter mobile number';
                                    } else if (!regExp.hasMatch(value)) {
                                      isNumberValid = false;
                                      return 'Please enter valid mobile number';
                                    }

                                    //api.number(value);
                                    return null;
                                  },
                                ),
                                const Divider(color: Colors.black54, height: 1),

                                /// PASSWORD
                                TextField(
                                  controller: passwordController,
                                  decoration: const InputDecoration(
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
                              _validKey.currentState!.validate();
                              if (isNumberValid == true) {
                                LoginVM loginUserVM = loginUser(
                                    userName: nameController.text,
                                    password: passwordController.text);
                                BlocProvider.of<AuthBloc>(context)
                                    .add(LogedInEvent(userLogin: loginUserVM));

                                nameController.clear();
                                passwordController.clear();
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Enter valid phone number'),
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              }

                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => MainScreen()));
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
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPasswordScreen()));
                                  },
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
                          const SizedBox(height: 15),
                          //demo button
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
                              'demo home\n button',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),

                          const SizedBox(height: 50),
                        ],
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  LoginVM loginUser({required String userName, required String password}) {
    LoginVMBuilder loginModel = LoginVMBuilder();
    loginModel.username = userName;
    loginModel.password = password;
    loginModel.rememberMe = true;
    LoginVM loginUser = loginModel.build();
    return loginUser;
  }
}
