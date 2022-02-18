import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Register_screen extends StatefulWidget {
  const Register_screen({Key? key}) : super(key: key);

  @override
  _Register_screenState createState() => _Register_screenState();
}

class _Register_screenState extends State<Register_screen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
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
                        "Sign Up",
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
                            "Full Name",
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
                        decoration: InputDecoration(
                          hintText: ("Abdulatipov Ibrohim"),
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
                              "Phone Number",
                              style: TextStyle(
                                  color: Colorss.grey,
                                  fontSize: FontConst.kMediumFont),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: ("909775909"),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                          color: Colorss.grey, fontSize: FontConst.kMediumFont),
                    ),
                  ],
                ),
                szBox(
                  h: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: ("***********"),
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
                        "Confirm Password",
                        style: TextStyle(
                            color: Colorss.grey,
                            fontSize: FontConst.kMediumFont),
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: ("***********"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                szBox(
                  h: 53,
                ),
                ElevatedButton(
                  child: const Text("Register"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(307, 48),
                    primary: Kprimary.kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                ),
                szBox(
                  h: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account?",
                      style: TextStyle(color: Colorss.grey),
                    ),
                    TextButton(onPressed: (){
                      Navigator.pushReplacementNamed(context, '/login',
                            arguments: _passcontroller.text);
                    }, child: Text("Login here")),
                    
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
}
