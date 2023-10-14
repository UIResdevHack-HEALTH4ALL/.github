import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();

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
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 228, 228),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10),),
              ),
              child: Column(
                children: [
                  Text("Reset Your Password",
                  style: TextStyle(
                    wordSpacing: 5,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        CustomTextField(
                          data: Icons.email,
                          controller: emailcontroller,
                          hintText: "Enter Your Email",
                          isObsecre: false,
                        ),
                      ],
                  )),
                  SizedBox(height: 20,),
                  ElevatedButton(
                  onPressed: ()=> print("clicked"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 170, 255),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                  ),
                  child: const Text(
                     "Send Reset Code",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
                  ),
                ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}