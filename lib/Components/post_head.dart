import 'package:flutter/material.dart';
class PostHead extends StatelessWidget {
  final String name;
  final String imageUrl;
  PostHead({this.name,this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage(imageUrl),
        ),
        SizedBox(
          width: 25.0,
        ),
        Text(name,style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        SizedBox(
          width: 120.0,
        ),
        Icon(
            Icons.more_vert
        ),
      ],
    );
  }
}