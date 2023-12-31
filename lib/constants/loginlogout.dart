import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/module/authen/services/auth_services.dart';
import 'package:rive/rive.dart';

import '../common/custom_textfield.dart';
import '../common/custon_button.dart';
import 'AnimatedBtn.dart';
// import 'formmy.dart';

class LoginLogout extends StatefulWidget {
  const LoginLogout({super.key});

  @override
  State<LoginLogout> createState() => _LoginLogoutState();
}

class _LoginLogoutState extends State<LoginLogout> {
  Auth _auth = Auth.signin;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
      context: context,
      email: _emailController.text,
      type: _typeController.text,
      password: _passwordController.text,
      name: _nameController.text,
    );
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      type: _typeController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(255, 216, 252, 248),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 74,
                width: 1086,
                child: const RiveAnimation.asset(
                  // "asset/rive_assets/.riv",
                  "asset/rive_assets/logo1.riv",
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(
                height: 33,
              ),
              ListTile(
                tileColor: _auth == Auth.signup
                    ? Global_Box.backgroundColor
                    : Color.fromARGB(255, 216, 252, 248),
                title: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                leading: Radio(
                  activeColor: const Color.fromARGB(255, 175, 7, 149),
                  value: Auth.signup,
                  groupValue: _auth,
                  autofocus: true,
                  onChanged: (Auth? val) async {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signup)
                Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(width: 1),
                  // ),
                  color: Global_Box.backgroundColor,
                  padding: const EdgeInsets.all(8),
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        CustomtextFeild(
                          hintText: "Name ",
                          controller: _nameController,
                          customicon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 175, 7, 149),
                          ),
                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        CustomtextFeild(
                          hintText: "Email ",
                          controller: _emailController,
                          customicon: const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 175, 7, 149),
                          ),
                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        CustomtextFeild(
                          hintText: "Password ",
                          controller: _passwordController,
                          customicon: const Icon(
                            Icons.password,
                            color: Color.fromARGB(255, 175, 7, 149),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        CustomBotton(
                          text: 'Sign Up',
                          onTap: () {
                            if (_signUpFormKey.currentState!.validate()) {
                              signUpUser();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Text(
                      "OR",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black38),
                    ),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              ListTile(
                tileColor: _auth == Auth.signin
                    ? Global_Box.backgroundColor
                    : Color.fromARGB(255, 216, 252, 248),
                title: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                leading: Radio(
                  activeColor: const Color.fromARGB(255, 175, 7, 149),
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) async {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signin)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Global_Box.backgroundColor,
                  child: Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        // CustomtextFeild(
                        //   hintText: "Name ",
                        //   controller: _nameController,
                        //   customicon: const Icon(
                        //     Icons.person,
                        //     color: Color.fromARGB(255, 175, 7, 149),
                        //   ),
                        // ),
                        const SizedBox(
                          height: 13,
                        ),
                        CustomtextFeild(
                          hintText: "Email ",
                          controller: _emailController,
                          customicon: const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 175, 7, 149),
                          ),
                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        CustomtextFeild(
                          hintText: "Password ",
                          controller: _passwordController,
                          customicon: const Icon(
                            Icons.password,
                            color: Color.fromARGB(255, 175, 7, 149),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        CustomBotton(
                          text: 'Sign In',
                          onTap: () {
                            if (_signInFormKey.currentState!.validate()) {
                              signInUser();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              //     const Text(
              //       "Sign In ",
              //       style: TextStyle(
              //         fontSize: 54,
              //       ),
              //     ),
              //     const Padding(
              //       padding: EdgeInsets.symmetric(vertical: 16),
              //       child: Text(
              //         "A health insurance policy  It has long-term benefits thatyuooo make taking a health insurance policy a definite goal in your annual financial plan.",
              //         // textAlign: TextAlign.center
              //       ),
              //     ),
              //     const Formmy(),
              //     const Row(
              //       children: [
              //         Expanded(
              //           child: Divider(),
              //         ),
              //         Padding(
              //           padding: EdgeInsets.symmetric(
              //               horizontal: 16, vertical: 12),
              //           child: Text(
              //             "OR",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(color: Colors.black38),
              //           ),
              //         ),
              //         Expanded(
              //           child: Divider(),
              //         ),
              //       ],
              //     ),
              //     const Padding(
              //       padding:
              //           EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              //       child: Text("Sign up  with Email, Microsoft, Google"),
              //     ),
              //     const bottomdata(),
            ],
          ),
        ),
      ),
    );
  }
}
