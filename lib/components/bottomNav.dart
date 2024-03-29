import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: GNav(
            gap: 20,
            padding: EdgeInsets.all(16),
            backgroundColor: Colors.transparent,
            color: const Color.fromARGB(255, 52, 52, 52),
            activeColor: Color.fromARGB(255, 255, 255, 255),
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
