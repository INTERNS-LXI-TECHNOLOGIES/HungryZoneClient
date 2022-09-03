import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi/openapi.dart';

import '../../const/const.dart';
import '../bloc/password/password_bloc.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController keyController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  bool isValid = false;
  final GlobalKey<FormState> _validKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordBloc, PasswordState>(
      listener: (context, state) async {
        if (state is ForgotPasswordLoaded) {
          emailController.clear();
          Navigator.of(context).pop();
        } else if (state is ForgotPasswordLoading ||
            state is ForgotPasswordLoadError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Reset password Failed'),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
          await Future.delayed(const Duration(seconds: 1));
          Navigator.of(context).pop();
        } else if (state is ForgotPasswordFinishLoaded) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Reset password Suceessful'),
              backgroundColor: Colors.blue,
              behavior: SnackBarBehavior.floating,
            ),
          );
          await Future.delayed(const Duration(seconds: 2));
          keyController.clear();
          newPasswordController.clear();
          Navigator.of(context).pop();
        } else if (state is ForgotPasswordFinishLoadError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Reset password Failed'),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
          await Future.delayed(const Duration(seconds: 2));
          keyController.clear();
          newPasswordController.clear();
        }
      },
      builder: (context, state) => Scaffold(
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
                      Text('Forgot Password',
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
                      child: BlocBuilder<PasswordBloc, PasswordState>(
                        builder: (context, state) {
                          if (state is ForgotPasswordLoaded) {
                            return SingleChildScrollView(
                                child: Column(
                              children: [
                                //sendMail(context),

                                //
                                //field for change password key
                                resetPassword(context),
                              ],
                            ));
                          } else {
                            return SingleChildScrollView(
                                child: Column(
                              children: [
                                sendMail(context),

                                //
                                //field for change password key
                                // resetPassword(context),
                              ],
                            ));
                          }
                        },
                      ),
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

  Column sendMail(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),

        /// Text Field for email
        emailTextField(context),
        const SizedBox(height: 25),

        /// send maiil button
        sendMailButton(context),
        const SizedBox(height: 15),
      ],
    );
  }

  Column resetPassword(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          height: 80,
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
          child: TextFormField(
            controller: keyController,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: "Enter key",
                hintStyle: TextStyle(color: Colors.grey)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),

        //
        //field for new password

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          height: 80,
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
          child: TextFormField(
            controller: newPasswordController,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: "New password",
                hintStyle: TextStyle(color: Colors.grey)),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        //
        //
        //Button for reset passwword and Newpppassword model
        MaterialButton(
          onPressed: () {
            bool isValidate = _validKey.currentState!.validate();
            if (isValid == true || isValidate == true) {
              KeyAndPasswordVMBuilder newPasswordBody =
                  KeyAndPasswordVMBuilder();
              newPasswordBody.key = keyController.text;

              newPasswordBody.newPassword = newPasswordController.text;
              KeyAndPasswordVM newPasswordFinish = newPasswordBody.build();
              BlocProvider.of<PasswordBloc>(context).add(
                  ForgotPasswordKeyEvent(newPasswordBody: newPasswordFinish));
            } else {}
            //Navigator.of(context).pop();
          },
          height: 45,
          minWidth: 240,
          textColor: Colors.white,
          color: Colors.green.shade700,
          shape: const StadiumBorder(),
          child: const Text(
            'Reset Password',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Container emailTextField(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: 80,
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
          TextFormField(
            controller: emailController,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
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
        ],
      ),
    );
  }

  MaterialButton sendMailButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        bool isValidate = _validKey.currentState!.validate();
        if (isValid == true || isValidate == true) {
          BlocProvider.of<PasswordBloc>(context)
              .add(ForgotPasswordEvent(emailId: emailController.text));
        } else {}
        //Navigator.of(context).pop();
      },
      height: 45,
      minWidth: 240,
      textColor: Colors.white,
      color: Colors.green.shade700,
      shape: const StadiumBorder(),
      child: const Text(
        'Send mail',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}
