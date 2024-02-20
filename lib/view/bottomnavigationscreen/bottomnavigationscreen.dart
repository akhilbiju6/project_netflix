import 'package:flutter/material.dart';
import 'package:project_netflix/view/comingsoonscreen/comingsoon_screen.dart';
import 'package:project_netflix/view/downloadscreen/downloadscreen.dart';
import 'package:project_netflix/view/homescreen/homescreen.dart';
import 'package:project_netflix/view/mycolors/mycustomcolors.dart';
import 'package:project_netflix/view/searchscreen/searchscreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedindex=0;
  List<Widget>screens=[
  HomeScreen(),
  SearchSCreen(),
  ComingSoonScreen(),
  DownloadScreen(),
  Text("screen 5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors.mycusdtomblack,
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: MyCustomColors.mycusdtomblack,
        
        items: 
      [
      BottomNavigationBarItem(icon:Image.asset("assets/line-md_home-simple.png"),label: "Home"),
      BottomNavigationBarItem(icon: Image.asset("assets/feather_search.png"),label: "Search"),
      BottomNavigationBarItem(icon: Image.asset("assets/Vector.png"),label: "Coming soon"),
      BottomNavigationBarItem(icon: Image.asset("assets/fe_download.png"),label: "Downloads"),
      BottomNavigationBarItem(icon: Image.asset("assets/Vector (1).png"),label: "More"),
      
      ],
      onTap: (value) {
        setState(() {
          selectedindex=value;
        });
      },
      
      ),
      

    );
  }
}