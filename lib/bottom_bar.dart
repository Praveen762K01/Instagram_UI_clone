import 'package:flutter/material.dart';
import 'package:instagram/favourites_page.dart';
import 'package:instagram/home_page.dart';
import 'package:instagram/profile_page.dart';
import 'package:instagram/reels_page.dart';
import 'package:instagram/search_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPage = 0;
  List pages = const [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    FavouritesPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.slow_motion_video_sharp), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
