import 'package:flutter/material.dart';
import 'package:instagram/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            alignment:Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/logo.png'),
                ),
                SizedBox(
                  height: 120.0,
                ),
                Text('From Zubair'.toUpperCase(),style: TextStyle(
                  color: Color(0xFFDB2A58),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),)
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Home();
            }));
          },
          backgroundColor: Color(0xFFDB2A58),
          child: Icon(
            Icons.arrow_forward,
          ),
        ),
      ),
    );
  }
}



