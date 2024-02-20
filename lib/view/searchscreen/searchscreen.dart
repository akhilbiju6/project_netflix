import 'package:flutter/material.dart';
import 'package:project_netflix/utils/homescreen_db.dart';

class SearchSCreen extends StatefulWidget {
  const SearchSCreen({super.key});

  @override
  State<SearchSCreen> createState() => _SearchSCreenState();
}

class _SearchSCreenState extends State<SearchSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              
              children: [
                Container(
                  color: Colors.grey,
                  height: 50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search,color: Colors.white,),
                          SizedBox(width: 20,),
                          Text("Search for a show, movie,genre.e.t.c.",style: TextStyle(
                            color: Colors.white,fontSize: 16
                          ),),SizedBox(width: 20,),
                          Icon(Icons.mic,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Top Searches",style: TextStyle(
                    fontSize: 23,color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                    ],
                  ),
                ),
                Center(
                  child: Expanded(
                    
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                   
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.grey,
                          height: 80,
                          width: 350,
                         child: Row(
                          children: [
                            Image.asset(HomescreenDb.dataitems[index]["image"]),
                            Text("Movie name",
                            style: TextStyle(
                              fontSize: 17,
                              
                            ),),
                            Icon(Icons.play_circle,color: Colors.white,)
                          ],
                          
                         
                         ),
                                            ),
                      ),),
                  ),
                )
                
              ],
            )
          ],
        ),
      ),
    );
  }
}