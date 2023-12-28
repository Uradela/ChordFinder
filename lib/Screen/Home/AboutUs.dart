import 'package:chord_finder/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "About Us",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("B8BAEF"),
              hexStringToColor("7276E0"),
              hexStringToColor("141CCC")
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: [
                Lottie.network(
                  "https://assets3.lottiefiles.com/packages/lf20_v1yudlrx.json",
                  height: size.height * 0.3,
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Lottie.network(
                      "https://assets1.lottiefiles.com/packages/lf20_085ixxa8.json",
                      height: 100.0,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "@naftali_sp",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Lottie.network(
                      "https://assets1.lottiefiles.com/packages/lf20_085ixxa8.json",
                      height: 100.0,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      "@yoelsrg_",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
