import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/ui_logo.png",
            width: 118,
            height: 141,),
            SizedBox(height: 40,),
            Column(
              children: [
                Text("Reset Password")
              ],
            )
          ],
        ),
      ),
    );
  }
}