import 'package:flutter/material.dart';
import 'package:open_ai/pages/chats_page.dart';
import 'package:open_ai/pages/home_page.dart';
import 'package:open_ai/pages/store_page.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = 'BottomNavBar';

  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedPage = 1;

  final List<dynamic> _pageOptions = [
    const StorePage(),
    const HomePage(),
    const ChatsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      extendBody: true,
      body: _pageOptions[selectedPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Positions FAB in center

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPage,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
        items: const [
          BottomNavigationBarItem(

              icon: Image(
                image: AssetImage("assets/images/layers.png"),
              ),
              label: "Store"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/images/chat-gpt.png"),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/images/chat.png"),
              ),
              label: "Chats"),
        ],
        onTap: (icon) {
          setState(() {
            selectedPage = icon;
          });
        },
      ),
    );
  }
}
