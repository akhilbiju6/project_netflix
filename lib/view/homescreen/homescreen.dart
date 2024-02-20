import 'package:flutter/material.dart';
import 'package:project_netflix/view/homescreen/widgets/custommoviecard.dart';
import 'package:project_netflix/view/mycolors/mycustomcolors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors.mycusdtomblack,
      body: SingleChildScrollView(
        child: Column(
          
          children: [SingleChildScrollView(),
            Stack(
              children: [
                Container(
                  height: 430,
                  width: double.infinity,
                  child: Image.asset("assets/Rectangle 26 (1).png",fit: BoxFit.fill,),
                ),
                Positioned(left: 20,
                top: 40,
                  child: Row(
                    children: [
                      Image.asset("assets/logos_netflix-icon (1).png"),
                      SizedBox(width: 25,),
                      Text("Tv Shows",style: TextStyle(
                        fontSize: 22,color: Colors.white
                      ),),
                      SizedBox(width: 25,),
                      Text("Movies",style: TextStyle(
                        fontSize: 22,color: Colors.white
                      ),),
                      SizedBox(width: 25,),
                      Text("Mylist",style: TextStyle(
                        fontSize: 22,color: Colors.white
                      ),)
                    ],
                  
                  ),
                )
              ],
            ),
            Row(mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/Group 16.png"),
                SizedBox(width: 5,),
                Text("#2 in Nigeria Today",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,
                  fontSize: 17
                ),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.add,color: Colors.white,),
                      Text("My List",style: TextStyle(
                        color: Colors.white
                      ),),
                    ],
                  ),SizedBox(width: 40,),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow,size: 35,),
                        SizedBox(width: 10,),
                        Text("Play",style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                      ),SizedBox(width: 40,),
                      Column(
                        children: [
                          Icon(Icons.info,color: Colors.white,),
                          Text("Info",style: TextStyle(
                            color: Colors.white
                          ),)
                        ],
                      )
                ],
              ),
            ),SizedBox(height: 23,),
            
            CustomMovieCard(title: "preview",
            isCircular: true,),
            CustomMovieCard(title: "Continue Watching For Akhil",
           height: 300,
           width:200 , ),
           CustomMovieCard(title: "Popular on Netflix",
           height: 300,
           width: 200,)

          ],
        ),
      )

 
          

          

    );
  }
}