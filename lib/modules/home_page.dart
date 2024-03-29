// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:login_signup/components/bottomNav.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(251, 198, 198, 198),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: signOut,
            icon: Icon(Icons.logout),
            color: Color.fromARGB(255, 255, 255, 255),
          )
        ],
      ),
      body: Center(
        child: Text("Logged In"),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
