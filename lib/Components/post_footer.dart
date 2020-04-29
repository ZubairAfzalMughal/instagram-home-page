import 'package:flutter/material.dart';
class PostBottom extends StatelessWidget {
  final Color color;
  final Function onTap;
  final IconData icon;
  PostBottom({this.color,this.onTap,this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
          child:GestureDetector(
            onTap: onTap,
            child: Icon(
              icon,
              color: color,
            ),
          ),
    );
  }
}