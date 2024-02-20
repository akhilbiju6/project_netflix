import 'package:flutter/material.dart';
import 'package:project_netflix/utils/comingsoonscreen_db.dart';
import 'package:project_netflix/view/mycolors/mycustomcolors.dart';
import 'package:project_netflix/view/notificationscreenmiviecard/notificationscreenmoviecard.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({super.key});

  @override
  State<ComingSoonScreen> createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: MyCustomColors.mycusdtomblack,
      ),
      body: Column(
        children: [
          Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: MyCustomColors.mycustomred,
              child: Image.asset("assets/bi_bell-fill.png")),
              SizedBox(width: 2,),
              Text("Notifications",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.grey,
            child: ListView.separated(
              itemCount: 2,
              itemBuilder: (context, index) => 
               Row(
                 children: [
                   Container(
                     height: 100,
                     width: 100,
                     child: Image.asset(ComingSoonScreenDb.dataitems[index]["image"],fit: BoxFit.fill,)),
                     SizedBox(width: 20,),
                   Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("New arrival",style: TextStyle(
                         color: MyCustomColors.mycustomwhite
                       ),),
                       Text("el chapo",style: TextStyle(
                         color: MyCustomColors.mycustomwhite
                       ),),
                       Text("nov 6",style: TextStyle(
                         color: MyCustomColors.mycustomwhite
                       ),)
               
                     ],
                   )
                 ],
               ),
              separatorBuilder: (context, index) => SizedBox(height: 10,),
            ),
          ),
        ),
        

        ],
      ),

    );
  }
}
