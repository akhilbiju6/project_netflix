import 'package:flutter/material.dart';
import 'package:project_netflix/utils/imageconstants.dart';
import 'package:project_netflix/utils/userselectionscreen_db.dart';
import 'package:project_netflix/view/bottomnavigationscreen/bottomnavigationscreen.dart';
import 'package:project_netflix/view/homescreen/homescreen.dart';
import 'package:project_netflix/view/mycolors/mycustomcolors.dart';
import 'package:project_netflix/view/notificationscreenmiviecard/notificationscreenmoviecard.dart';

class UserSelectionScreen extends StatefulWidget {
  const UserSelectionScreen({super.key});

  @override
  State<UserSelectionScreen> createState() => _UserSelectionScreenState();
}

class _UserSelectionScreenState extends State<UserSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: MyCustomColors.mycusdtomblack,
      leading: SizedBox(width: 200,),
      title: ImageConstants.netflixlogo,centerTitle: true,
      actions: [Icon(Icons.edit,color: Colors.white)],
      ),
      backgroundColor: MyCustomColors.mycusdtomblack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: UserSelectionScreendb.userscreendata.length+1,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) => 
                  index<UserSelectionScreendb.userscreendata.length?
                Column(
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:  (context) => BottomNavigationScreen(),));
                    },
                      child: Container(
                        height: 100,
                        width: 92,
                        child: Image.asset(UserSelectionScreendb.userscreendata[index]["image"],fit: BoxFit.fill,),
                        decoration:BoxDecoration(
                          color: MyCustomColors.mycustomred,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(UserSelectionScreendb.userscreendata[index]["names"],
                      style: TextStyle(color: Colors.white),),
                    ),
                 
                    
                  ],
                ):Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,backgroundColor: Colors.white,
                        child: Image.asset("assets/Union.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Add profile",style: TextStyle(
                          color: Colors.white
                        ),),
                      )
                    ],
                  ),
                ),
                          
                ),
              ),
            ),
            
          ]
        )
      ),
    );
  }
}