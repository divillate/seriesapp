import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/screen.jpg"),
                    scale: 05,
                    opacity: 30,
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding:
                //const EdgeInsets.only(top: 73, left: 0, right: 0, bottom: 34),
                const EdgeInsets.all(12),
            child: Container(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 48.0),
                          child: Text.rich(TextSpan(
                              text: "Welcomen!",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 24))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
