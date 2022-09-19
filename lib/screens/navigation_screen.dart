import 'package:flutter/material.dart';
import 'package:foodstore/screens/fav_page.dart';
import 'package:foodstore/screens/home_page.dart';
import 'package:foodstore/screens/menu_page.dart';
import 'package:foodstore/screens/serch_page.dart';

class Navigatin extends StatefulWidget {
  const Navigatin({Key? key}) : super(key: key);

  @override
  State<Navigatin> createState() => _NavigatinState();
}

class _NavigatinState extends State<Navigatin> {
  int currentPage = 0;
  late List pages;

  @override
  void initState() {
    super.initState();
    pages = [
      const HomePage(),
      const SearchPage(),
      const favoritePage(),
      const MenuPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: currentPage == 0 ? Color(0xffEC994B) : Colors.grey),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: currentPage == 1 ? Color(0xffEC994B) : Colors.grey),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
                  color: currentPage == 2 ? Color(0xffEC994B) : Colors.grey),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.roller_shades,
                  color: currentPage == 3 ? Color(0xffEC994B) : Colors.grey),
              label: ""),
        ],
      ),
      body: pages[currentPage],
    );
  }
}
