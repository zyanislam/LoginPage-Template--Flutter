// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String imgPath;
  const MyTile({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        child: Image.asset(
          imgPath,
          height: 40,
        ),
      ),
    );
  }
}
