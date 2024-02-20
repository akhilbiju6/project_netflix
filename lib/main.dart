import 'package:flutter/material.dart';
import 'package:project_netflix/view/homescreen/homescreen.dart';
import 'package:project_netflix/view/splashscreen/splashscreen.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
