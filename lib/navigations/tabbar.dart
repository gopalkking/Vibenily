import 'package:flutter/material.dart';
import 'package:vibenily/views/home.dart';
import 'package:vibenily/views/library.dart';
import 'package:vibenily/views/profile.dart';
import 'package:vibenily/views/search.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            this._selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: "Your Library"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: Stack(
        children: [
          renderview(
            0,
            HomeView(),
          ),
          renderview(
            1,
            SearchView(),
          ),
          renderview(
            2,
            LibraryView(),
          ),
          renderview(
            3,
            ProfileView(),
          ),
        ],
      ),
    );
  }

  IgnorePointer renderview(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
