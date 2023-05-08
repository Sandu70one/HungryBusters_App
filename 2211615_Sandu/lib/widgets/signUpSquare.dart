import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpSquare extends StatefulWidget {
  final String iconPath;
  const SignUpSquare({
    super.key,
    required this.iconPath,
  });

  @override
  State<SignUpSquare> createState() => _SignUpSquareState();
}

class _SignUpSquareState extends State<SignUpSquare> {
  @override
  // String pp = $iconPath;
  Widget build(BuildContext context) {
    //!can't pass icon path params well
    return Row(children: [
      Image.asset(
        "assets/images/google.png",
        height: 25,
        width: 25,
      ),
      const SizedBox(
        width: 25,
      ),
      Image.asset(
        "assets/images/facebook.png",
        height: 33,
        width: 33,
      ),
    ]);
  }
}


