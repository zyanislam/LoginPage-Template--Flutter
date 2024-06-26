// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/components/button.dart';
import 'package:login_signup/components/textfield.dart';
import 'package:login_signup/components/tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // Text Field Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111B21),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: 50),
            Image.asset(
              "images/Logo.png",
              width: 140,
            ),
            SizedBox(height: 40),
            Text(
              "Welcome back!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 50),
            MyTextField(
              controller: emailController,
              hintText: 'Email/Username',
              obscureText: false,
            ),
            SizedBox(height: 10),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
            SizedBox(height: 40),
            MyButton(
              onTap: signIn,
            ),
            SizedBox(height: 40),
            Row(children: [
              Expanded(
                child: Divider(
                  thickness: 0.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Or continue with',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 0.5,
                ),
              ),
            ]),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTile(imgPath: 'images/Google.png'),
                MyTile(imgPath: 'images/Facebook.png'),
              ],
            ),
            SizedBox(height: 40),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Not a member?',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 10),
              Text(
                'Click Here to Register',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
