import 'package:flutter/material.dart';
import 'package:project_netflix/view/downloadscreen/downloadscreen.dart';
import 'package:project_netflix/view/comingsoonscreen/comingsoon_screen.dart';
import 'package:project_netflix/view/homescreen/homescreen.dart';
import 'package:project_netflix/view/mycolors/mycustomcolors.dart';
import 'package:project_netflix/view/userselectionscreen/userselectionscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => UserSelectionScreen(),));
    },);
    super.initState();
    
  }
  @override
  void dispose() {
  
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors.mycusdtomblack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logos_netflix.png"),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CircularProgressIndicator(color: MyCustomColors.mycustomred,),
            )
          ],
        ),
      ),

    );
  }
}