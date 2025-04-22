import 'package:flutter/material.dart';
class GoldJewAppScreen extends StatefulWidget {
  const GoldJewAppScreen({super.key});

  @override
  State<GoldJewAppScreen> createState() => _GoldJewAppScreenState();
}

class _GoldJewAppScreenState extends State<GoldJewAppScreen> {

  TextEditingController priceController=TextEditingController();
  TextEditingController tolaquantityController=TextEditingController();
  TextEditingController mashaquantityController=TextEditingController();
  double totalprice=0;
  double result=0;
  double masha=0.0;
  int a=0;
  int b=0;
  int c=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:Icon(Icons.account_circle_rounded,color:Colors.yellow,),
        title:Text(
          'Gold Jewellary App',style:TextStyle(
          color:Colors.yellow,
          fontWeight:FontWeight.bold,
          fontSize:20,
        ),
        ),
        centerTitle: true,
        actions:[
          Icon(Icons.search,color:Colors.yellow,),
          SizedBox(width:15),
          Icon(Icons.more_vert,color:Colors.yellow,),
        ],
      ),
      body:
      Center(
        child:  Column(
        children: [
          SizedBox(height:50),
          Container(
            height:40,
            width:190,
            decoration: BoxDecoration(
              color:Colors.black,
              borderRadius:BorderRadius.circular(10),
            ),
            child:TextFormField(
              controller:priceController,
              style:TextStyle(
                color:Colors.yellow,
                fontWeight:FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText:'enter per tola price',
                hintStyle:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height:20),
          Container(
            height:40,
            width:190,
            decoration: BoxDecoration(
              color:Colors.black,
              borderRadius:BorderRadius.circular(10),
            ),
            child:TextFormField(
              controller:tolaquantityController,
              style:TextStyle(
                color:Colors.yellow,
                fontWeight:FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText:'enter tola quantity',
                hintStyle:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height:20),
          Container(
            height:40,
            width:190,
            decoration: BoxDecoration(
              color:Colors.black,
              borderRadius:BorderRadius.circular(10),
            ),
            child:TextFormField(
              controller:mashaquantityController,
              style:TextStyle(
                color:Colors.yellow,
                fontWeight:FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText:'enter masha quantity',
                hintStyle:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height:15),
          Text(
            'total Price=$totalprice',
            style:TextStyle(
              color:Colors.black,
              fontSize:20,
              fontWeight:FontWeight.bold,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed:(){
              a=int.parse(priceController.text);
              b=int.parse(tolaquantityController.text);
              c=int.parse(mashaquantityController.text);
              a=a*b;
              print("total tolaquantity=$a");
              masha=(a/12) *b;
              print("total mashaquantity=$masha");
              totalprice=result+masha;
              print("total price for customer=$totalprice");
              setState((){});
            },
            child:Text(
              'total Price',
              style:TextStyle(
                color:Colors.yellow,
                fontSize:10,
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height:10),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed:(){
             totalprice=0;
             priceController.clear();
             tolaquantityController.clear();
             mashaquantityController.clear();
             setState(() {

             });
            },
            child:Text(
              'Clear',
              style:TextStyle(
                color:Colors.yellow,
                fontWeight:FontWeight.bold,
                fontSize:15,
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
