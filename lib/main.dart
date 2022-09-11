import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//https://www.youtube.com/watch?v=Nx3iQwh1Wes&t=444s