import 'package:flutter/material.dart';
import 'package:whatspp_clone_project/bottom_navigation.dart';
import 'package:whatspp_clone_project/calls_page.dart';
import 'package:whatspp_clone_project/community_page.dart';
import 'package:whatspp_clone_project/main_page.dart';
import 'package:whatspp_clone_project/updates_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottomnavigation(),
    );
  }
}