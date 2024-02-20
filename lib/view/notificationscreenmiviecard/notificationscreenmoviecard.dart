import 'package:flutter/material.dart';

class NotificationSCreenMovieCard extends StatefulWidget {
  const NotificationSCreenMovieCard({super.key});

  @override
  State<NotificationSCreenMovieCard> createState() => _NotificationSCreenMovieCardState();
}

class _NotificationSCreenMovieCardState extends State<NotificationSCreenMovieCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.red,
      child: Column(
        children: [
          Image.asset("assets/hit.jpeg"),
          Row(
            children: [
              Column(
                children: [
                  Icon(Icons.notifications),
                  Text("remainder")
                ],
              ),
              Column(
                children: [
                 Icon(Icons.share) ,
                 Text("share")
                ],
              )
            ],
          ),
          

        ],
      ),

    );
  }
}