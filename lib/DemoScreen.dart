import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Image.asset(
                  "assets/intro1.png",
                  width: 50,
                  height: 50,
                ),
                Positioned(
                  right: 0,bottom: 0,
                  child: Image.asset(
                    "assets/intro1.png",
                    width: 15,
                    height: 15,
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "01723355522",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "sent",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "10,000 BDT",
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/intro1.png",
                        width: 15,
                        height: 15,
                      ),
                      Image.asset(
                        "assets/intro1.png",
                        width: 15,
                        height: 15,
                      ),
                      Image.asset(
                        "assets/intro1.png",
                        width: 15,
                        height: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}