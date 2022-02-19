import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/data/data.dart';
import 'package:agro_exam/widgets/snackbar.dart';
import 'package:agro_exam/widgets/widgets.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  _Login_screenState createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: PaddingMarginConst.kExtraLargePadding,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Kprimary.kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: FontConst.kExtraLargeFont),
                      ),
                    ),
                    szBox(
                      h: 100,
                    ),
                  ],
                ),
                szBox(
                  h: 49,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Your number",
                            style: TextStyle(
                                color: Colorss.grey,
                                fontSize: FontConst.kMediumFont),
                          ),
                        ],
                      ),
                      szBox(
                        h: 10,
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: ("Enter your number"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  color: Colorss.grey,
                                  fontSize: FontConst.kMediumFont),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: ("***********"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ],
                  ),
                ),
                szBox(
                  h: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(
                        "Forgot password ?",
                        style: TextStyle(
                            color: Colorss.grey,
                            fontSize: FontConst.kMediumFont,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
                szBox(
                  h: 43,
                ),
                ElevatedButton(
                    child: const Text("Login"),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(307, 48),
                      primary: Kprimary.kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () => singIn()),
                szBox(
                  h: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account? ",
                      style: TextStyle(color: Colorss.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/register',
                            arguments: _passwordController.text);
                      },
                      child: const Text(
                        "Register here",
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
                szBox(
                  h: 40,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 40),
                    primary: Colorss.blueButton,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.facebook),
                      szBox(w: 15),
                      const Text("Continue with Facebook"),
                    ],
                  ),
                ),
                szBox(
                  h: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 40),
                    primary: Colorss.redButton,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.golf_course_outlined),
                      szBox(w: 28),
                      const Text("Continue with Google"),
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

  singIn() {
    if (_formKey.currentState!.validate()) {
      for (var userpass in UsersInfo.users) {
        if (userpass.name == _emailController.text &&
            userpass.password == _passwordController.text) {
          Navigator.pushReplacementNamed(context, '/home',
              arguments: userpass.name);
          return true;
        }
      }
      MyMessenger.showMyMessenger("Username yoki password !", context);
    }
  }
}
