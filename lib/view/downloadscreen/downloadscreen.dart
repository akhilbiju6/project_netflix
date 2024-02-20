import 'package:flutter/material.dart';
import 'package:project_netflix/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:project_netflix/view/mycolors/mycustomcolors.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors.mycusdtomblack,
      appBar: AppBar(
        backgroundColor: MyCustomColors.mycusdtomblack,
        title: Text("Smart Downloads",style: TextStyle(
          fontSize: 17,color: MyCustomColors.mycustomwhite
        ),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Introducing Downloads For You",style: TextStyle(
                  fontSize: 20,color: MyCustomColors.mycustomwhite,fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: 350,
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: TextStyle(
                    color: MyCustomColors.mycustomwhite
                  ),),
                ),
              ),
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: CircleAvatar(radius: 120,backgroundColor:Color(0xff424242),))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    child: Center(
                      child: Text("SETUP",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff0071EB),
                      
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 50,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 50,
                  width: 240,
                  child: Center(child: Text("Find Something To Download",
                  style: TextStyle(
                    color: Colors.white
                  ),)),
                  decoration: BoxDecoration(
                    color: Color(0xff424242)
                  ),
                ),
              )
            ],
          ),
          
        ],
      ),
      
    );
  }
}