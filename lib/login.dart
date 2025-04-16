import 'package:flutter/material.dart';
import 'package:untitled/buttonsclass.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        leading:Icon(Icons.person_add_outlined),
        actions:[
          Icon(Icons.search),
          SizedBox(width:15),
          Icon(Icons.more_vert),
          SizedBox(width:15),
        ],
      ),
body:Column(
  children: [
    Center(
      child:Text(
        'LoginScreen',style:TextStyle(
        fontSize:50,
        fontWeight:FontWeight.bold,
      ),
      ),
    ),
    SizedBox(height:10),
    Container(
      height:40,
      width:250,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color:Colors.blue,
        border:Border.all(width:5,color:Colors.white,)
      ),
      child:Center(
        child:Text(
          'enter user name',
        ),
      ),
    ),
    SizedBox(height:10),
    Container(
      height:40,
      width:250,
      decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          color:Colors.blue,
          border:Border.all(width:5,color:Colors.white,)
      ),
      child:Center(
        child:Text(
          'enter your email here',
        ),
      ),
    ),
    SizedBox(height:10),
    Center(
      child:FloatingActionButton(
        onPressed:(){
          Navigator.push(
            context,MaterialPageRoute(builder:(context)=>ButtonClassScreen())
          );
        },
        child:Text(
          'Login',
        ),
      ),
    ),
  ],
),
    );
  }
}
