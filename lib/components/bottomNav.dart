// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 8,
            padding: EdgeInsets.all(16),
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Color.fromARGB(255, 154, 135, 212),
            tabBackgroundColor: Colors.grey.shade800,
            tabs: [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.explore, text: 'Explore'),
              GButton(icon: Icons.favorite_outline, text: 'Likes'),
              GButton(icon: Icons.person, text: 'User'),
            ],
          ),
        ),
      ),
    );
  }
}
