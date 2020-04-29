import 'package:flutter/material.dart';
import 'package:instagram/user/user_file.dart';
import 'package:instagram/Components/post_head.dart';
import 'package:instagram/Components/post_body.dart';
import 'package:instagram/Components/post_footer.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
User _user=User();
String baker='Mrs.Baker';
Color kInActiveColor=Colors.black87;
Color kActiveColor=Color(0xFFFF0000);
class _HomeState extends State<Home> {
  UserReact _userReact;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.camera_alt,
            color: Colors.black87,
            size: 30.0,
          ),
          title: Text(
            'Instagram',
            style: TextStyle(color: Colors.black87),
          ),
          actions: <Widget>[
            Icon(
              Icons.near_me,
              color: Colors.black87,
              size: 30.0,
            ),
          ],
        ),
        body: ListView(
          children:<Widget>[
            Column(
            children: <Widget>[
              Container(
              height: 100.0,
                padding: EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _user.myUsers.length,
                    itemBuilder: (context,int index){
                      return(
                        Column(
                          children: <Widget>[
                              Padding(
                                padding:EdgeInsets.only(left: 10.0),
                                child: CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: AssetImage(_user.myUsers[index].imageUrl),
                                ),
                              ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              _user.myUsers[index].name
                            ),
                          ],
                        )
                      );
                    }),
              ),
              // Post header
              PostHead(name: 'Christan Jasen',imageUrl: 'images/Christan.jpg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/Christan.jpg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
              // Post header
              SizedBox(height: 15.0,),
              PostHead(name: 'Cristina Xavier',imageUrl: 'images/cristina.jpg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/cristina.jpg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
              SizedBox(height: 15.0,),
              PostHead(name: 'Hannah Baker',imageUrl: 'images/Hannah.jpeg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/Hannah.jpeg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
              SizedBox(height: 15.0,),
              PostHead(name: 'Jenifer See',imageUrl: 'images/Jenifer.jpg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/Jenifer.jpg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
              SizedBox(height: 15.0,),
              PostHead(name: 'John TEDX',imageUrl: 'images/john.jpg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/john.jpg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
              SizedBox(height: 15.0,),
              PostHead(name: 'Justin Charles',imageUrl: 'images/Justin.jpg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/Justin.jpg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
              SizedBox(height: 15.0,),
              PostHead(name: 'Mrs.Baker',imageUrl: 'images/$baker.jpg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/$baker.jpg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
              SizedBox(height: 15.0,),
              PostHead(name: 'Angela Markes',imageUrl: 'images/Nadia.jpg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/Nadia.jpg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
              SizedBox(height: 15.0,),
              PostHead(name: 'Yen Hills',imageUrl: 'images/yen.jpg',),
              SizedBox(
                height: 10.0,
              ),
              //Post body
              PostBody(imageUrl: 'images/yen.jpg',),
              //Post Bottom
              Row(
                children: <Widget>[
                  PostBottom(color:_userReact==UserReact.like?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.like;
                    });
                  },icon: Icons.thumb_up,),
                  PostBottom(color:_userReact==UserReact.comment?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.comment;
                    });
                  },icon: Icons.comment,),
                  PostBottom(color:_userReact==UserReact.share?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.share;
                    });
                  },icon: Icons.near_me,),
                  SizedBox(
                    width: 150.0,
                  ),
                  PostBottom(color:_userReact==UserReact.saved?kActiveColor:kInActiveColor,onTap: (){
                    setState(() {
                      _userReact=UserReact.saved;
                    });
                  },icon: Icons.save,),
                ],
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}
enum UserReact{
  like,
  comment,
  share,
  saved
}




