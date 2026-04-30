// NayaPay App Clone
import 'package:flutter/material.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(), 
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});
  @override
  State <HomeScreen> createState () => _HomeScreenState ();
}

class _HomeScreenState extends State <HomeScreen> {
  @override
  Widget build (BuildContext context) {
    return Scaffold (
      body: Center (
        child: Text ("Getting Started With NayaPay App Clone"),
      )
    );
  }
}