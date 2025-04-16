import 'package:flutter/material.dart';
import 'package:untitled/login.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.person_add_outlined),
        actions:[
         Icon(Icons.search),
         SizedBox(width:15),
         Icon(Icons.more_vert),
        ],
        title:Text(
          'welcome here',
        ),
      ),
     body: Column(
        children: [
          Center(
            child:Text(
              'SignUpScreen',style:TextStyle(
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
                'enter your 1st name',
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
                'enter your last name',
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
                'enter your email',
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
                'enter your password',
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
                'Confirm password',
              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            height:40,
            width:120,
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color:Colors.blue,
                border:Border.all(width:5,color:Colors.white,)
            ),
            child:Center(
              child:Text(
                'SignUpScreen',
              ),
            ),
          ),
          Center(
            child:FloatingActionButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>LoginScreen())
                );
              },
              child:Text(
                'Login'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
