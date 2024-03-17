// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(252, 16, 16, 20),
      body: SafeArea(
        // body: Container(
        //   // decoration: BoxDecoration(
        //   //   image: DecorationImage(
        //   //     image: AssetImage("images/2.png"),
        //   //     fit: BoxFit.cover,
        //   //   ),
        //   // ),
        //   child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200),
              Image.asset(
                "images/Logo.png",
                width: 180,
              ),
              SizedBox(height: 100),
              Text(
                "Welcome back!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50),
              MyTextField(
                controller: usernameController,
                hintText: 'Enter your username',
                obscureText: false,
              ),
              SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your password',
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
