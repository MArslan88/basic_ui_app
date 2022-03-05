import 'package:basic_ui_app/screens/parts/app_button.dart';
import 'package:basic_ui_app/screens/parts/app_textfield.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 27, top: 110, bottom: 59, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Let's sign in!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 14),
            const Text("Welcome \nJoin the community!",
                style: TextStyle(color: Colors.white, fontSize: 30)),

            const SizedBox(
                height: 47), // to create space between text and TextField
            const AppTextField(placeholder: "Enter your email address"),
            const AppTextField(placeholder: "Enter your password"),

            const Spacer(), // to create space between password textField and button
            GestureDetector(
              onTap: () {
                // Screen navigation code
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Already have an account ? ",
                    style: TextStyle(color: Color(0xff8F8F9E), fontSize: 15),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 11),
            AppButton(label: "Sign up", onPress: onSignPress),
          ],
        ),
      ),
    );
  }

  void onSignPress() {}
}
