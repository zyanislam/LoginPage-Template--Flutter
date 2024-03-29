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
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 1, 1, 1),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        actions: [
          IconButton(
            onPressed: signOut,
            icon: Icon(Icons.logout),
            color: Color.fromARGB(255, 1, 1, 1),
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
