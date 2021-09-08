import 'package:flutter/material.dart';
import 'package:paracare/screens/main_screen.dart';
import 'package:paracare/utils/colors.dart';
import 'package:paracare/utils/size_config.dart';
import 'package:paracare/utils/style.dart';
import 'package:paracare/utils/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreen,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  height: Media.height! * 40,
                  width: Media.width! * 50,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    height: Media.height! * 70,
                    width: Media.width! * 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 1,
                      child: Column(
                        children: [
                          yHeight3,
                          Image.asset(
                            "assets/login_icon.png",
                            fit: BoxFit.contain,
                            color: blue,
                          ),
                          yHeight3,
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: TextFormField(
                              controller: emailController,
                              style: fieldStyle,
                              decoration: fieldDeco('Email'),
                              onFieldSubmitted: (value) {},
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value)) {
                                  return 'Enter a valid email!';
                                }
                                return null;
                              },
                            ),
                          ),
                          yHeight2,
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: TextFormField(
                              controller: passwordController,
                              style: fieldStyle,
                              obscureText: true,
                              decoration: fieldDeco('Password'),
                              onFieldSubmitted: (value) {},
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password is required';
                                }
                                return null;
                              },
                            ),
                          ),
                          yHeight2,
                          btn("Sign in", blue, () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          }),
                          yHeight05,
                          colorSmallText("or", blue!),
                          yHeight2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: Media.image! * 9,
                                  child: Image.asset("assets/fb_icon.png")),
                              xWidth3,
                              Container(
                                  height: Media.image! * 9,
                                  child: Image.asset("assets/google_icon.png")),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
