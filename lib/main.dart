import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login.dart';
import 'package:instagram_clone/screens/profile.dart';
import 'package:instagram_clone/screens/signup.dart';
import 'package:instagram_clone/screens/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/profile': (context) => Profile(),
        '/login': (context) => Login(),
        '/singup': (context) => Signup()
      },
    );
  }
}
