import 'package:flutter/material.dart';

class BurgerClassScreen extends StatelessWidget {
  const BurgerClassScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
    backgroundColor: Colors.orange,
    leading:Icon(Icons.menu,color:Colors.white,size:30,),
    title:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
    Text(
    'FOODXA',style:TextStyle(
    color:Colors.white,
    fontSize:15,
    ) ,
    ),
    Row(
    children: [
    Text(
    'GOOD FOOD GOOD HEALTH',style:TextStyle(
    color:Colors.white,
    fontSize:10,
    ),
    ),
    Spacer(),
    Text(
    'Sector 67 ,5m',style:TextStyle(
    color:Colors.white,
    fontSize:15,
    ),
    ),
    Icon(Icons.add_location_alt_outlined,color:Colors.white,),
    ],
    ),
    ],
    ),
//           centerTitle: false,
//           actions:[
//             // SizedBox(height:30),
//             //  Text(
//             //   'Sector 67 ,5m',style:TextStyle(
//             //   color:Colors.white,
//             //    fontSize:15,
//             //  ),
//             //  ),
// //            SizedBox(width:5),
//             Icon(Icons.add_location_alt_outlined,color:Colors.white,),
//             SizedBox(width:10),
//           ],
    ),
    body: SingleChildScrollView(
    scrollDirection:Axis.vertical,
    child: Padding(
    padding: const EdgeInsets.only(left: 18,right: 18),
    child: Column(
    children:[
    //1st Row
    SizedBox(height: 10,),
    Row(
    children: [
    //   SizedBox(width:100),
    // SizedBox(height:120),
    Container(
    height:30,
    width:180,
    decoration:BoxDecoration(
    color: Colors.orange,
    borderRadius:BorderRadius.circular(10),
    border:Border.all(color:Colors.white,width:1,),
    ),
    child:Row(
    children:[
    SizedBox(width:2),
    Icon(Icons.search,color:Colors.white,),
    SizedBox(width:5),
    Text(
    'Search Favourite Food',style:TextStyle(
    color:Colors.white,
    fontSize:12,
    ),
    ),
    ],
    ),
    ),
    Spacer(),
    //SizedBox(width:120),
    Container(
    height: 30,
    width: 60,
    decoration: BoxDecoration(
    color: Colors.orange,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
    bottomLeft: Radius.circular(10)
    )
    ),
    child:
    Center(child:Text('Delivery',style:TextStyle(
    color:Colors.black,
    fontSize:15,
    ),
    ),
    ),
    ),
    Container(
    height: 30,
    width: 60,
    decoration: BoxDecoration(
    color: Colors.white54,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(10),
    bottomRight: Radius.circular(10)
    ),
    border: Border.all()
    ),
    child:
    Center(child:Text('Dining',style:TextStyle(
    color:Colors.black,
    fontSize:15,
    ),
    ),
    ),
    ),
    // Container(
    //   height:40,
    //   width:380,
    // decoration:BoxDecoration(
    //   color:Colors.orange,
    //   borderRadius:BorderRadius.circular(10),
    //   border:Border.all(width:1,color:Colors.white),
    //
    // ),
    //   child:Row(
    //     children:[
    //       SizedBox(width:20),
    //       Text(
    //        'Delivery',style:TextStyle(
    //         color:Colors.white,backgroundColor: Colors.deepOrange,
    //           fontSize:30,
    //       ),
    //       ),
    //     Icon(Icons.more_vert,size:10,color:Colors.white,),
    //     Text(
    //       'Dining',style:TextStyle(
    //       color:Colors.white,fontSize:30,
    //     ),
    //     ),
    //     ] ,
    //   ),
    // ),
    ],
    ),
    //2nd Row
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    SizedBox(height:30),
    Text(
    'Top Deals',style:TextStyle(
    color:Colors.black,fontSize:20,
    fontWeight:FontWeight.bold,
    ),
    ),
    ],
    ),
    //3rd Row
    Container(
    height:200,
    width:600,
    decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(20),
    image:DecorationImage(
    image:AssetImage('assets/food.jpg'),
    fit:BoxFit.cover,
    ),
    ),
    ),
    //4th row
    Row(
    children:
    [
    SizedBox(height:30),
    Text(
    'Categories',style:TextStyle(
    color:Colors.black,
    fontSize:20,
    fontWeight:FontWeight.bold,
    ),
    ),
    Spacer(),
    Text(
    'See All',style:TextStyle(
    color:Colors.red,
    fontSize:15,
    ),
    ),
    SizedBox(width:20),
    ],
    ),
    //5th row
      // (
      SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child: Row(
        children:[
        Column(
        children: [
        CircleAvatar
        (
        radius:50,
        backgroundColor:Colors.orange,
        child:CircleAvatar(
        radius:47,
        backgroundColor: Colors.white,
        child:CircleAvatar(
        radius:42,
        backgroundImage: AssetImage('assets/burger.jpg'),
        ),
        ),
        ),
        SizedBox(height:10),
        Text(
        'Burger',style:TextStyle(
        fontSize:20,color:Colors.black,
        ),
        ),
        ],
        ),
        SizedBox(width:10),
        Column(
        children: [
        CircleAvatar(
        radius:50,
        backgroundColor: Colors.orange,
        child:CircleAvatar(
        radius:47,
        backgroundColor:Colors.white,
        child:CircleAvatar(
        radius:42,
        backgroundImage: AssetImage('assets/realpizza.jpg'),

        ),
        ),
        ),
        SizedBox(height:10),
        Text(
        'Pizza',style:TextStyle(
        color:Colors.black,fontSize:20,
        ),
        ),
        ],
        ),
        SizedBox(width:10),
        Column(
        children: [
        CircleAvatar(
        radius:50,
        backgroundColor: Colors.orange,
        child:CircleAvatar(
        radius:47,
        backgroundColor:Colors.white,
        child:CircleAvatar(
        radius:42,
        backgroundImage: AssetImage('assets/fries.jpg'),
        ),
        ),
        ),
        SizedBox(height:10),
        Text(
        'Fries',style:TextStyle(
        color:Colors.black,fontSize:20,
        ),
        ),
        ],
        ),
        SizedBox(width:10),
        Column(
        children: [
        CircleAvatar(
        radius:50,
        backgroundColor: Colors.orange,
        child:CircleAvatar(
        radius:47,
        backgroundColor: Colors.white,
        child:CircleAvatar(
        radius:42,
        backgroundImage: AssetImage('assets/hot dog.jpg'),

        ),
        ),
        ),
        SizedBox(height:10),
        Text(
        'Hot Dog',style:TextStyle(
        color:Colors.black,fontSize:20,
        ),
        ),
        ],
        ),
        SizedBox(width:10),
        Column(
        children: [
        CircleAvatar(
        radius:50,
        backgroundColor: Colors.orange,
        child:CircleAvatar(
        radius:47,
        backgroundColor: Colors.white,
        child:CircleAvatar(
        radius:42,
        backgroundImage: AssetImage('assets/tacco.jpg'),

        ),
        ),
        ),
        SizedBox(height:10),
        Text(
        'Tacco',style:TextStyle(
        color:Colors.black,
        fontSize:20,
        ),
        ),
        ],
        ),
        SizedBox(width:10),
        Column(
        children: [
        CircleAvatar(
        radius:50,
        backgroundColor:Colors.orange,
        child:CircleAvatar(
        radius:47,
        backgroundColor: Colors.white,
        child:CircleAvatar(
        radius:42,
        backgroundImage: AssetImage('assets/sandwitch.jpg'),

        ),
        ),
        ),
        SizedBox(height:10),
        Text(
        'Sandwitch',style:TextStyle(
        color:Colors.black,fontSize:20,
        ),
        ),
        ],
        ),

        ],
        ),
      ),

    //6th row
    Row(
    children:[
    SizedBox(height:30),
    Text(
    'Recommended Products',style:TextStyle(
    color:Colors.black,fontSize:20,
    fontWeight:FontWeight.bold,
    ),
    ),
    Spacer(),
    Text(
    'See All',style:TextStyle
    (
    color:Colors.red,
    fontSize:15,
    )
    ),
    SizedBox(width:20),
    ],
    ),
    //7th row
    SingleChildScrollView(
    scrollDirection:Axis.horizontal,
    child:
    Row(
    mainAxisAlignment:MainAxisAlignment.start,
    children:[
    //column1
    Column
    (
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
      Card(
        child:Column(
          children:[
            Container(
              height:150,
              width:150,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage('assets/burger king.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height:10),
            Text(
              'Burger King',
              style:TextStyle(
                color:Colors.black,
                fontSize:15,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height:10),
            Text(
              '\$180.00',style:TextStyle(
              color:Colors.grey,
              fontSize:10,
            ),
            ),
          ],
        ),
      ),
    ],
    ),
    SizedBox(width:80),
    //2nd column
    Column(
    children:[
      Card(
        child:Column(
          children:[
            Container(
              height:150,
              width:150,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage('assets/familypizza.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height:10),
            Text(
              'Family Pizza',
              style:TextStyle(
                color:Colors.black,
                fontSize:15,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height:10),
            Text(
              '\$140.00',style:TextStyle(
              color:Colors.grey,
              fontSize:10,
            ),
            ),
          ],
        ),
      ),
    ],
    ),
    SizedBox(width:80),
    Column(
    children:[
      Card(
        child:Column(
          children:[
            Container(
              height:150,
              width:150,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage('assets/deals.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height:10),
            Text(
              'Family Deals',
              style:TextStyle(
                color:Colors.black,
                fontSize:15,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height:10),
            Text(
              '\$340.00',style:TextStyle(
              color:Colors.grey,
              fontSize:10,
            ),
            ),
          ],
        ),
      ),
    ],
    ),
    SizedBox(width:80),
    Column(
    children:[
      Card(
        child:Column(
          children:[
            Container(
              height:150,
              width:150,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage('assets/food.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height:10),
            Text(
              'Food Details',
              style:TextStyle(
                color:Colors.black,
                fontSize:15,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height:10),
            Text(
              '\$210.00',style:TextStyle(
              color:Colors.grey,
              fontSize:10,
            ),
            ),
          ],
        ),
      ),
    ],
    ),
SizedBox(width:80),
Column(
  children:[

    Card(
      child:Column(
        children:[
          Container(
            height:150,
            width:150,
            decoration:BoxDecoration(
              image:DecorationImage(
                image:AssetImage('assets/burger.jpg'),
                fit:BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height:10),
          Text(
            'Main Deals',
            style:TextStyle(
              color:Colors.black,
              fontSize:15,
              fontWeight:FontWeight.bold,
            ),
          ),
          SizedBox(height:10),
          Text(
            '\$217.00',style:TextStyle(
            color:Colors.grey,
            fontSize:10,
          ),
          ),
        ],
      ),
    ),
  ],
),
    ],
    ),
    //end of 7th row
    ),
    //8th row
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
    Icon(Icons.home,color:Colors.red,size:30),
    Icon(Icons.circle_notifications,color:Colors.black,size:30),
    CircleAvatar(
    radius:30,
    backgroundColor: Colors.red,
    child:Icon(Icons.perm_contact_calendar_outlined,color:Colors.black,size:20),
    ),
    Icon(Icons.add_reaction_outlined,color:Colors.black,size:30),
    Icon(Icons.person_sharp,color:Colors.black,size:30),
    ],
    ),
      ],
    ),
    ),
    ),
    );
  }
}
