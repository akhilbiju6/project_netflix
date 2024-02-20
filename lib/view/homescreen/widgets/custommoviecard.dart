import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_netflix/utils/homescreen_db.dart';

class CustomMovieCard extends StatelessWidget {
  const CustomMovieCard({
    super.key,
    required this.title,
    this.height=100,
    this.width=100,
    this.isCircular=false});


 final String title;
 final double height;
 final double width;
 final bool isCircular;
  @override
  Widget build(BuildContext context) {
    return   Container (
      child: Column(
        children: [
          Row(
            children: [
              Text(title,style: TextStyle(
                fontSize: 23,color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
          Center(
            child: Expanded(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: HomescreenDb.dataitems.length-1,
                  itemBuilder: (context, index) => 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(HomescreenDb.dataitems[Random().nextInt(10)]["image"],fit: BoxFit.fill,),
                    height: 200,
                    width: 100,
                 decoration: BoxDecoration(
                      shape: isCircular==true?BoxShape.circle:BoxShape.rectangle,
                      color: Colors.white
                      
                    ),
                  ),
                )
                ,),
              ),
            ),
          )
          ],
      ),
      
    );
  }
}