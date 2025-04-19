import 'package:flutter/material.dart';
class EvenOddScreen extends StatefulWidget {
  const EvenOddScreen({super.key});

  @override
  State<EvenOddScreen> createState() => _EvenOddScreenState();
}

class _EvenOddScreenState extends State<EvenOddScreen> {
  int a=0;
  int b=0;
TextEditingController n1Controller=TextEditingController();
TextEditingController n2Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar:AppBar(
        backgroundColor: Colors.red,
        leading:Icon(Icons.menu),
        title:Text(
          'Even odd check program',style:TextStyle(
           color:Colors.black,
          fontSize:10,
        ),
        ),
        centerTitle: false,
        actions:[
          Icon(Icons.search),
          SizedBox(width:15),
          Icon(Icons.more_vert),
        ],
      ),
      body:Center(
        child:Column(
          children:[
            Container(
              height:40,
              width:160,
              decoration: BoxDecoration(
                color:Colors.yellow,
                borderRadius:BorderRadius.circular(10),
              ),
              child:TextFormField(
                controller: n1Controller,
                  style:TextStyle(
                    color:Colors.black,
                    fontWeight:FontWeight.bold,
                    fontSize:15,
                  ),
                decoration: InputDecoration(
                  hintText:'enter 1st number',
                  hintStyle:TextStyle(
                    color:Colors.black,
                    fontSize:15,
                  ),
                ),
              ),
            ),
            SizedBox(height:20),

            Container(
              height:40,
              width:160,
              decoration: BoxDecoration(
                color:Colors.yellow,
                borderRadius:BorderRadius.circular(10),
              ),
              child:TextFormField(
                controller: n2Controller,
                style:TextStyle(
                  color:Colors.black,
                  fontWeight:FontWeight.bold,
                  fontSize:15,
                ),
                decoration: InputDecoration(
                  hintText:'enter 2nd number',
                  hintStyle:TextStyle(
                    color:Colors.black,
                    fontSize:15,
                  ),
                ),
              ),
            ),
            SizedBox(height:20),
            FloatingActionButton(
              onPressed:(){
               a=int.parse(n1Controller.text);
               b=int.parse(n2Controller.text);
               if(a/2==1 && b/2==1)
                 {
                   print("a and b are odd numbers");
                 }
               else
                 {
                   print("either a is odd or b is odd");
                 }
               setState(() {});
              },
              child:Text(
                'ODD',style:TextStyle(
                color:Colors.black,
                fontSize:10,
                fontWeight:FontWeight.bold,
              ),
              ),
            ),
            SizedBox(height:10),
            Text(
              'a is odd number=$a',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:10,
            ),
            ),
            SizedBox(height:10),
            Text(
              'b is odd number=$b',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:10,
            ),
            ),

            SizedBox(height:20),
            FloatingActionButton(
              onPressed:(){
                a=int.parse(n1Controller.text);
                b=int.parse(n2Controller.text);
                if(a/2==0 && b/2==0)
                {
                  print("a and b are even number");
                }
                else
                {
                  print("either a is odd or b is odd");
                }
                setState(() {

                });
              },
              child:Text(
                'Even',style:TextStyle(
                color:Colors.black,
                fontSize:10,
                fontWeight:FontWeight.bold,
              ),
              ),
            ),

            SizedBox(height:10),
            Text(
              'a is even number=$a',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:10,
            ),
            ),
            SizedBox(height:10),
            Text(
              'b is even number=$b',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:10,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
