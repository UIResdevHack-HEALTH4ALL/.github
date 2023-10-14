import 'package:flutter/material.dart';
import 'package:health4all/Signin_pages/login.dart';
import 'package:health4all/widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/ui_logo.png"),
            const SizedBox(height: 30,),
            Container(
              height: 300,
              width: 400,
              decoration:const BoxDecoration(
                color: Color.fromARGB(255, 237, 232, 232),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
              ),
              child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Registration",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              ),
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      CustomTextField(
                        data: Icons.numbers,
                        controller: numbercontroller,
                        hintText: "Jaja Registration Number",
                        isObsecre: false,
                        ),
                        CustomTextField(
                          data: Icons.lock,
                          controller: passwordcontroller,
                          hintText: "Password",
                          isObsecre: true,
                        ),
                      ],
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Already Have an Account?"),
                    TextButton(
                      onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ));
                                }, 
                      child: Text("Login!")),
                  ],
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: ()=> print("clicked"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 170, 255),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                  ),
                  child: const Text(
                     "Sign In",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
                  ),
                ),
            ],
            ),
          )
          ],
          
        ),
      )
    );
  }
}