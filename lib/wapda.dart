import 'package:flutter/material.dart';
class WapdaScreen extends StatefulWidget {
  const WapdaScreen({super.key});

  @override
  State<WapdaScreen> createState() => _WapdaScreenState();
}

class _WapdaScreenState extends State<WapdaScreen>{
  int tax=0;
  int a=0;
  int units=0;
  int bill=0;
  TextEditingController n1Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          children:[
            Padding(
              padding: EdgeInsets.symmetric(horizontal:40,vertical:20),
              child:TextFormField(
                controller: n1Controller,
                  style:TextStyle(
                    color:Colors.black,
                    fontSize:15,
                    fontWeight: FontWeight.bold,
                  ),
                decoration: InputDecoration(
                  hintText:'enter units used by customer',
                  hintStyle:TextStyle(
                    color:Colors.red,
                    fontWeight:FontWeight.bold,
                    fontSize:15,
                  ),
                  prefixIcon: Icon(Icons.abc),
                ),
              ),
            ),
            SizedBox(height:30),
            FloatingActionButton(onPressed: (){
              a=int.parse(n1Controller.text);
              if(units>100){
                tax=50;
                bill=units+tax;
                print("total bill=$bill");
              }
              else if (units>1000){
                tax=80;
                bill=units+tax;
                print("total bill=$bill");
              }
              else {
                print("no electricity used");
              }
              setState(() {

              });
            },
              child: Text('bill=$bill'),
            ),
            SizedBox(height:15),
            Text(
              'bill=$bill',
            ),
          ],
        ),
      ),
    );
  }
}
