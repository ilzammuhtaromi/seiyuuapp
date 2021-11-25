import 'dart:async';
import 'package:seiyuuapp/halaman/homeNav.dart';
import 'package:flutter/material.dart';
import 'package:seiyuuapp/halaman/home.dart';
import 'package:seiyuuapp/halaman/homeNav.dart';

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => NavBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 110,
        ),
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'res/mal.jpg',
                  width: 225,
                  height: 225,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Seiyuu APP',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}