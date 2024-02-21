import 'package:auth_final/screen/Pages/home.dart';
import 'package:auth_final/screen/Pages/likes.dart';
import 'package:auth_final/screen/Pages/post.dart';
import 'package:auth_final/screen/Pages/profile.dart';
import 'package:auth_final/screen/Pages/search.dart';
import 'package:flutter/material.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _HomeState();
}

int selectedIndex = 0;

List<Widget> pages = [
  const Home(),
  const Search(),
  const Post(),
  const Likes(),
  const Profile(),
];

class _HomeState extends State<Bottom_Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 109, 50, 168),
          unselectedItemColor: const Color.fromARGB(255, 191, 157, 224),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Likes'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
