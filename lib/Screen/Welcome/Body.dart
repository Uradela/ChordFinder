import 'package:chord_finder/Simpanan/Login.dart';
import 'package:chord_finder/Screen/SignIn/SignIn.dart';
import 'package:chord_finder/Simpanan/SignUp.dart';
import 'package:chord_finder/Screen/Welcome/Background.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "CHORD FINDER",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Lottie.network(
              'https://assets6.lottiefiles.com/packages/lf20_IdLFJKvoof.json',
              height: size.height * 0.55,
            ),
            Material(
              color: Color.fromARGB(255, 20, 165, 255),
              borderRadius: BorderRadius.circular(29),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: size.width * 0.8,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Text(
                    "START",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
