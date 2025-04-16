import 'package:flutter/material.dart';

class ButtonClassScreen extends StatelessWidget {
  const ButtonClassScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
    appBar:AppBar(
      backgroundColor: Colors.greenAccent,
      leading:CircleAvatar(
        radius:20,
        child:Icon(Icons.person_add_outlined,color:Colors.purple,),
      ),
      actions:[
        Icon(Icons.search,color:Colors.purple,),
        SizedBox(width:15),
        Icon(Icons.more_vert,color:Colors.purple,),
        SizedBox(width:15),
        ],
        title:Text(
      'Want to login',
    ),
      centerTitle:true,
    ),
      body:Column(
        children:[
          SizedBox(height:20),
          Center(
            child: Text(
              'LOGIN SCREEN',style:TextStyle(
              fontSize:40,
              fontWeight:FontWeight.bold,
              color:Colors.white,
              backgroundColor: Colors.black,
            ),
            ),
          ),
          SizedBox(height:30),
          Container(
            height:40,
            width:250,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(20),
              color:Colors.black,
            ),
            child:Center(
              child:Text(
                'Enter Your Email',style:TextStyle(
                color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize:20,
              ),
              ),
            ),
          ),
          SizedBox(height:10),
          Container(
            height:40,
            width:250,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(20),
              color:Colors.black,
            ),
            child:Center(
              child:Text(
                'Enter password',style:TextStyle(
                color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize:20,
              ),
              ),
            ),
          ),
          SizedBox(height:10),
         Center(
           child:
             FloatingActionButton(
               backgroundColor: Colors.black,
               onPressed:(){

               },
               child:Text(
                 'SignUp',style:TextStyle(
                 color:Colors.white,
                 fontWeight:FontWeight.bold,
               ),
               ),
             ),
         ),
        ],
      ),
    );
  }
}
