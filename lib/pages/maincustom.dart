import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/marketplace.dart';
import 'package:facebook/pages/menu.dart';
import 'package:facebook/pages/newsfeed.dart';
import 'package:facebook/pages/notifications.dart';
import 'package:facebook/pages/reels.dart';
import 'package:flutter/material.dart';

class MaincustomPage extends StatefulWidget {
  const MaincustomPage({super.key});

  @override
  State<MaincustomPage> createState() => _MaincustomPageState();
}

class _MaincustomPageState extends State<MaincustomPage> {
  int selectedIndex = 0;
  
  List pages = [
    const Newsfeed(),
    const FriendsPage(),
    const Reels(),
    const Marketplace(),
    const NotificationPage(),
    const Menu()
  ];
  void onItemTapped(int index){
    setState((){
      selectedIndex = index;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : pages[selectedIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed, 
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Friends"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_outlined), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.storefront_outlined), label: "Market Place"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: "Notifications"),
          BottomNavigationBarItem(
            label:"Profile",
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof3.jpg")
            ))
        ],
      )
    );
  }
}