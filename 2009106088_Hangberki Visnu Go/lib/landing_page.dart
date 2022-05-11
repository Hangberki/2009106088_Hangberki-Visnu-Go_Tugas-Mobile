import 'package:flutter/material.dart';

import 'form_page.dart';
import 'main_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Widget picPic(String gambar) {
    return Container(
      width: 250,
      height: 450,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(gambar),
        fit: BoxFit.cover,
      )),
    );
  }

  Widget greyContainer() {
    return Container(
      width: 2,
      height: 130,
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child: Container(
      width: mediaQueryWidth,
      height: mediaQueryHeight,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color.fromARGB(255, 87, 87, 87)])),
      child: ListView(
        children: [
          SizedBox(
            height: 90,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Text(
                "MOTORCYCLE",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 55,
                    fontFamily: "baskvi"),
              ),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  width: mediaQueryWidth,
                  height: 450,
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          " 04",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 85,
                              fontFamily: "baskvi"),
                        ),
                      ),
                      greyContainer(),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "10 ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 85,
                              fontFamily: "baskvi"),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 19),
                width: mediaQueryWidth,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.only(left: 95),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          picPic("assets/a2.jpg"),
                          picPic("assets/a3.jpg"),
                          picPic("assets/a1.jpg"),
                        ],
                      ),
                    ),
                    Container(
                        width: mediaQueryWidth,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Exclusive Type",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 50,
                                  fontFamily: "baskvi"),
                            ),
                            Text(
                              "of Motorcycle",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 40,
                                  fontFamily: "baskvi"),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: 50,
                              height: 3,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Container(
                              width: mediaQueryWidth,
                              child: Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => MainPage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "SHOP NOW",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 20,
                                          fontFamily: "baskvi"),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/dua');
                                    },
                                    child: Text(
                                      "ACCOUNT",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 20,
                                          fontFamily: "baskvi"),
                                    ),
                                  ),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
