import 'package:flutter/material.dart';
class WhatsAppChatScreen extends StatelessWidget {
  const WhatsAppChatScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        actions:[
          Icon(Icons.camera_alt,color:Colors.black,),
          SizedBox(width:20),
          Icon(Icons.more_vert,color:Colors.black,),
          SizedBox(width:30),
        ],
        title:Text(
          'WhatsApp',style:TextStyle(
          color:Colors.green,
          fontSize:30,
          fontWeight:FontWeight.bold,
        ),
        ),
        centerTitle:false,
      ),
      body:SingleChildScrollView(
        child: Column(
          children:[

            Container(
              height:80,
              width:270,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.white54,

              ),
              child:Row(
                children:[
                  Icon(Icons.search,color:Colors.black),
                  SizedBox(width:15),
                  Text(
                    'Search',style:TextStyle(
                    color:Colors.black,fontSize:20,fontWeight:FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),
            Divider(thickness:0.5,color:Colors.blueGrey),
            Row(
              children:[
                Container(
                  height:25,
                  width:100,
                  decoration: BoxDecoration(
                    color:Colors.white54,
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child:Text(
                    'All',style:TextStyle(
                    color:Colors.black,
                  ),
                  ),
                ),
                Container(
                  height:25,
                  width:50,
                  decoration: BoxDecoration(
                    color:Colors.white54,
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child:Text(
                    'UnRead Chats',style:TextStyle(
                    color:Colors.black,
                    fontSize:10,
                  ),
                  ),
                ),

                Container(
                  height:40,
                  width:100,
                  decoration: BoxDecoration(
                    color:Colors.white54,
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child:Text(
                    'Favourites',style:TextStyle(
                    color:Colors.black,
                  ),
                  ),
                ),
                Container(
                  height:20,
                  width:75,
                  decoration: BoxDecoration(
                    color:Colors.white54,
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child:Text(
                    'Groups',style:TextStyle(
                    color:Colors.black,
                  ),
                  ),
                ),
                Container(
                    height:35,
                    width:75,
                    decoration: BoxDecoration(
                      color:Colors.white54,
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child:Icon(Icons.add,color:Colors.black,)

                ),
              ],
            ),
            Divider(thickness:0.5,color:Colors.blueGrey,),
            Card(
              color:Colors.white,
              child:ListTile
                (
                leading:CircleAvatar(
                  radius:40,
                  backgroundImage: AssetImage('assets/awesome.jpg'),
                ),
                title:Text(
                  'Fatima',style:TextStyle(
                  color:Colors.black,
                  fontSize:20,
                ),
                ),
                subtitle: Text(
                  'wht about today??',
                  style:TextStyle(
                    color:Colors.black,
                    fontSize:10,
                  ),
                ),
                trailing:Column(
                  children:[
                    Text(
                      '6:03am',
                    ),
                    SizedBox(height:5),
                    CircleAvatar(
                      radius:20,
                      backgroundColor: Colors.red,
                      child:Text(
                        '2',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color:Colors.white,
              child:ListTile
                (
                leading:CircleAvatar(
                  radius:40,
                  backgroundImage: AssetImage('assets/beutifull.jpg.jpg'),
                ),
                title:Text(
                  'shazii',style:TextStyle(
                  color:Colors.black,
                  fontSize:20,
                ),
                ),
                subtitle: Text(
                  'are u here?',
                  style:TextStyle(
                    color:Colors.black,
                    fontSize:10,
                  ),
                ),
                trailing:Column(
                  children:[
                    Text(
                      '6:10am',
                    ),
                    SizedBox(height:5),
                    CircleAvatar(
                      radius:20,
                      backgroundColor: Colors.red,
                      child:Text(
                        '5',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color:Colors.white,
              child:ListTile
                (
                leading:CircleAvatar(
                  radius:30,
                  backgroundImage: AssetImage('assets/awesome.jpg'),
                ),
                title:Text(
                  'Fatima',style:TextStyle(
                  color:Colors.black,
                  fontSize:20,
                ),
                ),
                subtitle: Text(
                  'do you have some plain today??',
                  style:TextStyle(
                    color:Colors.black,
                    fontSize:10,
                  ),
                ),
                trailing:Column(
                  children:[
                    Text(
                      '8:30am',style:TextStyle(
                      color:Colors.blueGrey,
                    ),
                    ),
                    SizedBox(height:5),
                    CircleAvatar(
                      radius:20,
                      backgroundColor: Colors.red,
                      child:Text(
                        '5',style:TextStyle(
                        color:Colors.black,fontSize:10,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color:Colors.white,
              child:ListTile
                (
                leading:CircleAvatar(
                  radius:30,
                  backgroundImage: AssetImage('assets/awesome.jpg'),
                ),
                title:Text(
                  'Fatima',style:TextStyle(
                  color:Colors.black,
                  fontSize:20,
                ),
                ),
                subtitle: Text(
                  'do you have some plain today??',
                  style:TextStyle(
                    color:Colors.black,
                    fontSize:10,
                  ),
                ),
                trailing:Column(
                  children:[
                    Text(
                      '8:30am',style:TextStyle(
                      color:Colors.blueGrey,
                    ),
                    ),
                    SizedBox(height:5),
                    CircleAvatar(
                      radius:20,
                      backgroundColor: Colors.red,
                      child:Text(
                        '5',style:TextStyle(
                        color:Colors.black,fontSize:10,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color:Colors.white,
              child:ListTile
                (
                leading:CircleAvatar(
                  radius:30,
                  backgroundImage: AssetImage('assets/awesome.jpg'),
                ),
                title:Text(
                  'Fatima',style:TextStyle(
                  color:Colors.black,
                  fontSize:20,
                ),
                ),
                subtitle: Text(
                  'do you have some plain today??',
                  style:TextStyle(
                    color:Colors.black,
                    fontSize:10,
                  ),
                ),
                trailing:Column(
                  children:[
                    Text(
                      '8:30am',style:TextStyle(
                      color:Colors.blueGrey,
                    ),
                    ),
                    SizedBox(height:5),
                    CircleAvatar(
                      radius:20,
                      backgroundColor: Colors.red,
                      child:Text(
                        '5',style:TextStyle(
                        color:Colors.black,fontSize:10,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}

