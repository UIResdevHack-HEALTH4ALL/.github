import 'dart:async';

import 'package:flutter/material.dart';
import 'package:health4all/Signin_pages/register.dart';





class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen>
{

  startTimer()
  {
    Timer(const Duration(seconds: 8), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c)=> const RegisterScreen()));
    });
  }

  @override
  void initState() {
  
    super.initState();


    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/images/ui_logo.png"),
              ),

              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "UHS Jaja",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                  )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
