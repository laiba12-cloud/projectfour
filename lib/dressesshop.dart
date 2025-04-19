import 'package:flutter/material.dart';
class DressShopScreen extends StatefulWidget {
  const DressShopScreen({super.key});

  @override
  State<DressShopScreen> createState() => _DressShopScreenState();
}

class _DressShopScreenState extends State<DressShopScreen> {
int dress=0;
int a=0;
int bill=0;
double amount=0;
double tax=0;
int price=0;
TextEditingController n1Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:Column(
  children:[
    Padding(
      padding:EdgeInsets.symmetric(horizontal:40,vertical:20,),
      child:TextFormField(
        controller: n1Controller,
        style:TextStyle(
          color: Colors.black,
          fontSize:15,

        ),
        decoration: InputDecoration(
          hintText:'enter num of dresses',
          hintStyle:TextStyle(
            color:Colors.black,
            fontSize:15,
          ),
        ),
      ),
    ),
    FloatingActionButton(onPressed:(){
      a=int.parse(n1Controller.text);
      if(a<10)
        {
          price=2500;
        }
      else{
        price=2000;
      }
      bill=price*a;
      //tax is 13 percent
      tax=(bill/100) * 13;
      amount=tax+bill;
      setState(() {

      });
      print("Total price of dresses=$bill");

    },
    child:Text(
    'Bill',
    ),
    ),
    Text(
      'total amount for customer=$amount',
    ),
  ],
),
    );
  }
}
