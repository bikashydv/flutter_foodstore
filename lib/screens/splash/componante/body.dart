import 'package:flutter/material.dart';
import 'package:foodstore/screens/navigation_screen.dart';
import 'package:foodstore/screens/splash/componante/splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"image": "assets/splash2.png"},
    {"image": "assets/splash3.png"},
    {"image": "assets/Component 1.png"}
  ];

  // get color => null;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (vale) {
                  setState(() {
                    currentPage = vale;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"]!,
                ),
              )),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 285,
                  child: Text(
                    "Dont wanna make you have a bad day",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      color: Color(0xff46474B),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 267,
                  child: Text(
                    "Our job is delivering a delicious food with fast , free delivery and easy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff46474B),
                    ),
                  ),
                ),
                currentPage == 2
                    ? Padding(
                        padding:
                            const EdgeInsets.only(top: 60, left: 51, right: 51),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xffEC994B),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Navigatin()));
                            },
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    : SizedBox()
              ],
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 7),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        // color: currentPage == index ? color : Color(0xffEC994B),
        color: Color(0xffEC994B),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
