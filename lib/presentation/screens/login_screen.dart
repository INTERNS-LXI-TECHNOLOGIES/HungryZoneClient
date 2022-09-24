import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hungryzone/const/const.dart';
import 'package:hungryzone/presentation/screens/forgot_password_screen.dart';
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
  TextEditingController phoneNumberController = TextEditingController();
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
            phoneNumberController.clear();
            passwordController.clear();
          } else if (state is AuthLaodingState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Authentication loading'),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
            phoneNumberController.clear();
            passwordController.clear();
          } else if (state is AuthErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Authentication Failed'),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
              ),
            );
            phoneNumberController.clear();
            passwordController.clear();
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('eeeth nthh state'),
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
                  height: MediaQuery.of(context).size.width / 1.3,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('Hungry Zone',
                          style:
                              TextStyle(color: Colors.white, fontSize: 32.5)),
                      SizedBox(height: 7.5),
                      Text('Login',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
                Expanded(
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
                          textFieldLogin(context),
                          const SizedBox(height: 35),

                          ///
                          ///
                          ///
                          ///
                          ///
                          /// LOGIN TRIGGER BUTTON
                          ///
                          buttonLogin(context),
                          //
                          //forgot password button
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

                          const SizedBox(height: 25),
                          const SizedBox(height: 15),
                          textSpanSignup(context),

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

  Row textSpanSignup(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'New user ',
          style: const TextStyle(fontSize: 15, color: Colors.grey),
          children: <TextSpan>[
            TextSpan(
                text: ' Sign up ',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.cyan),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  }),
            const TextSpan(text: ' here '),
          ],
        ),
      ),
    ]);
  }

  MaterialButton buttonLogin(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        bool isValid = _validKey.currentState!.validate();
        if (isNumberValid == true || isValid == true) {
          LoginVM loginUserVM = loginUser(
              userName: phoneNumberController.text,
              password: passwordController.text);

          debugPrint(loginUserVM.toString());
          BlocProvider.of<AuthBloc>(context)
              .add(LogedInEvent(userLogin: loginUserVM));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login faild'),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      },
      height: 45,
      minWidth: 240,
      textColor: Colors.white,
      color: Colors.green.shade700,
      shape: const StadiumBorder(),
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  Container textFieldLogin(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: MediaQuery.of(context).size.width / 3,
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
          /// PhoneNumber validation
          TextFormField(
            style: const TextStyle(fontSize: 15),
            keyboardType: TextInputType.phone,
            controller: phoneNumberController,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: 'Phonenumber',
                isCollapsed: false,
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey)),
            validator: (value) {
              String pattern =
                  r'^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$';

              RegExp regExp = RegExp(pattern);
              if (value == null || value.isEmpty) {
                isNumberValid = false;
                return 'required field';
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
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: 'Password',
                isCollapsed: false,
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey)),
          ),
        ],
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
