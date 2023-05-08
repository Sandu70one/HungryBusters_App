import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _fromKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Container(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //!email form field
            _username(),

            const SizedBox(
              height: 2.0,
            ),

            //!password form field
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'password',
                hintText: '••••••••',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(fontSize: 20, color: Color(0xffE76A6A)),
                hintStyle: TextStyle(fontSize: 30, color: Color(0xffBBB7B7)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffE76A6A),
                  width: 1,
                )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Color(0xffE76A6A),
                  width: 1,
                )),
              ),

              //password validations
              validator: (value) {},
            ),

            Container(
              margin: const EdgeInsets.only(top: 17),
              child: const Center(
                child: Text(
                  "forgot password?",
                  style: TextStyle(fontSize: 18, color: Color(0xff6D6C6C)),
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            SizedBox(
              height: 62,
              width: 380,
              child: ElevatedButton(
                onPressed: () {
                  // if(_fromKey.currentState!.validate(){
                  // });
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xffEE5151),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      color: Color(0xffFDFDFD),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _username() {
    return (TextFormField(
      controller: _emailController,
      decoration: const InputDecoration(
        labelText: 'email',
        hintText: 'jimmy@hotmail.com',
        floatingLabelBehavior: FloatingLabelBehavior.always,

        // 0xff is the prefix of every Hex color, remove # and write it
        labelStyle: TextStyle(
            fontSize: 20,
            color: Color(0xffE76A6A),
            decoration: TextDecoration.none),
        hintStyle: TextStyle(fontSize: 20, color: Color(0xffBBB7B7)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xffE76A6A),
          width: 1,
        )),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xffE76A6A),
          width: 1,
        )),
      ),

      //email validations
      validator: (value) {
        // Check if this field is empty
        if (value == null || value.isEmpty) {
          "Please enter your email";
        }
        // using regular expression
        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
          return "Please enter a valid email address";
        }

        //check does it contains @ symbol
        // if(!value.contains(){
        //   "";
        // });
        // the email is valid

        return null;
      },
    ));
  }
}
