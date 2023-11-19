import 'package:flutter/material.dart';

import 'BottomNavbar_examples/bottomnavbar1.dart';
import 'BottomNavbar_examples/bottomnavbar2.dart'; 
import 'BottomNavbar_examples/bottomnavbar3.dart'; 
import 'BottomNavbar_examples/bottomnavbar4.dart'; 
import 'BottomNavbar_examples/bottomnavbar5.dart'; 

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomnavBar5(),
    );
  }
}
