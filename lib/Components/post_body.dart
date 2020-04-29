import 'package:flutter/material.dart';
class PostBody extends StatelessWidget {
  final String imageUrl;
  PostBody({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover
        ),
      ),
    );
  }
}
