import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                padding: EdgeInsets.only(left: 30, top: 70),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xffD9D9D9),
                      backgroundImage: AssetImage("assets/userimage.png"),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Container(
                              child: Text(
                                "Deliver to",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff46474B)),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "Your Destination",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff46474B)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        child: Stack(children: [
                          Image.asset("assets/dot.png"),
                          Image.asset("assets/bell.png"),
                        ]),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Image.asset("assets/hamburger menu.png"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 9,
                ),
                child: Text(
                  "Lets find your best favorite food!",
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff46474B),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            // add dispaly

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Container(
                width: 368,
                height: 170,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffD48C4A), Color(0xffEC994B)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    // Image.asset("assets/image 6.png"),
                    Container(
                      // width: 76,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Image(
                                  image: AssetImage("assets/image 6.png"))),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          top: 25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Container(
                                  child: Text(
                                    " Special for you",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Fried noodles with special chicken katsu',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                              ),
                              child: Container(
                                height: 21,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xff46474B),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    "Buy Now",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ////
            SizedBox(
              height: 16,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38,
                  right: 36,
                  top: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff46474B),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      " See All",
                      style: TextStyle(fontSize: 14, color: Color(0xffEC994B)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 125),
              child: Container(
                child: Text(
                  "See the most popular food on order",
                  style: TextStyle(
                      color: Color(0xffC5C4CB),
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ///////
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                // gridDelegate: SliverGridDelegateWi285hFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     childAspectRatio:
                //         ((MediaQuery.of(context).size.width - 46) / 2) / 216,
                //     crossAxisSpacing: 10,
                //     mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                          margin: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 14),
                          decoration: BoxDecoration(
                            color: Color(0xffEFEFEF),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 1, left: 1),
                                child: Image.asset(
                                  'assets/Rectangle 7.png',
                                  // height: 188,
                                  // width: 145,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Container(
                            child: Text(
                              "Special Pizza",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff46474B)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 5),
                          child: Container(
                            child: Text(
                              "With tommato sauce",
                              style: (TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffC7C5C5))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$12.50",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              // Text("sadh"),
                              FloatingActionButton(
                                heroTag: "bikash$index",
                                mini: true,
                                onPressed: () {},
                                backgroundColor: Color(0xffEC994B),
                                child: Icon(
                                  Icons.add,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 1),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 35,
                  right: 36,
                  top: 29,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Menu",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff46474B),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      " See All",
                      style: TextStyle(fontSize: 14, color: Color(0xffEC994B)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
