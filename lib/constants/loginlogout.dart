import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';
import 'package:pro/module/authen/services/auth_services.dart';

import '../common/custom_textfield.dart';
import '../common/custon_button.dart';
import 'AnimatedBtn.dart';
import 'formmy.dart';

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
      password: _passwordController.text,
      name: _nameController.text,
    );
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderOnForeground: false,
      color: Color.fromARGB(186, 189, 183, 183),
      child: Center(
        child: Container(
          alignment: Alignment(34, 56),
          height: 620,
          margin: const EdgeInsets.only(
            top: 4,
            bottom: 1,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 13),
          decoration: const BoxDecoration(
            // shape: BoxShape.rectangle,
            color: Global_Box.greyBackgroundCOlor,
            // backgroundBlendMode: BlendMode.darken,
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: Scaffold(
            backgroundColor: const Color.fromARGB(0, 235, 92, 204),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding:
                  const EdgeInsets.only(top: 23, bottom: 0, left: 3, right: 3),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 13,
                      ),
                      const Text(
                        "Sarvayon",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            color: Color(0xC8790768)),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      ListTile(
                        tileColor: _auth == Auth.signup
                            ? Global_Box.backgroundColor
                            : Global_Box.greyBackgroundCOlor,
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
                          onChanged: (Auth? val) async {
                            setState(() {
                              _auth = val!;
                            });
                          },
                        ),
                      ),
                      if (_auth == Auth.signup)
                        Container(
                          padding: const EdgeInsets.all(8),
                          color: Global_Box.backgroundColor,
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
                                ),
                                const SizedBox(
                                  height: 23,
                                ),
                                CustomBotton(
                                  text: 'Sign Up',
                                  onTap: () {
                                    if (_signUpFormKey.currentState!
                                        .validate()) {
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
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
                            : Global_Box.greyBackgroundCOlor,
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
                                ),
                                const SizedBox(
                                  height: 23,
                                ),
                                CustomBotton(
                                  text: 'Sign In',
                                  onTap: () {
                                    if (_signInFormKey.currentState!
                                        .validate()) {
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
                  const Positioned(
                    // top: 0,
                    left: 0,
                    right: 0,
                    bottom: -68,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(192, 207, 109, 176),
                      radius: 16,
                      child: Icon(
                        Icons.close,
                        color: Color.fromARGB(255, 12, 12, 12),
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
}
