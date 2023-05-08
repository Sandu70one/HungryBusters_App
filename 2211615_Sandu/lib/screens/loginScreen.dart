import 'package:flutter/material.dart';
import 'package:hungry_busters/widgets/signUpSquare.dart';
import 'package:hungry_busters/widgets/textForms/loginForm.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //get device height as final
    //final --> values are grab at runtime
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      //safeArea ==> this will indent the child by enough to avoid the status bar
      // at the top of the screen.It will also indent the child by the amount
      // necessary to avoid The Notch on the iPhone X,
      // or other similar creative physical features of the display.
      body: SafeArea(
        child: Column(children: [
          //in SizedBox their's no decoration property like container

          Container(
            margin: const EdgeInsets.only(top: 40),
            color: Colors.white,
            height: deviceHeight * 0.35,
            child: Image.asset(
              'assets/images/hungry.png',
              height: deviceHeight * 0.35,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(height: deviceHeight * 0.3596001, child: const LoginForm()),

          const Center(
            child: Text(
              "or",
              style: TextStyle(fontSize: 18, color: Color(0xff6D6C6C)),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SignUpSquare(iconPath: "assets/icons/google.svg"),
                SignUpSquare(iconPath: "assets/icons/facebook.svg"),
                //SignUpSquare(),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            // child: Container(
            child: Center(
              child: Text(
                " Don't have an account? Sign Up",
                style: TextStyle(
                    color: Color(0XffF14040),
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffF14040)),
              ),
            ),
            // ),
          )
        ]),
      ),
    );
  }
}
