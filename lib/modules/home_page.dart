// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: signOut,
            icon: Icon(Icons.logout),
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Text("Logged In"),
      ),
      bottomNavigationBar: BottomNavigationBar(),
    );
  }
}
