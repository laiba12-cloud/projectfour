import 'package:flutter/material.dart';
class GoldJewAppScreen extends StatefulWidget {
  const GoldJewAppScreen({super.key});

  @override
  State<GoldJewAppScreen> createState() => _GoldJewAppScreenState();
}

class _GoldJewAppScreenState extends State<GoldJewAppScreen> {

  TextEditingController pricerateController=TextEditingController();
  TextEditingController tolaquantityController=TextEditingController();
  TextEditingController mashaquantityController=TextEditingController();
  TextEditingController rattiquantityController=TextEditingController();
  TextEditingController pointsquantityController=TextEditingController();
  double totaltola=0.0;
  double totalmasha=0.0;
  double totalratti=0.0;
  double totalpoints=0.0;
  double totalbill=0.0;
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
        child:  SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child: Column(
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
                keyboardType:TextInputType.number,
                controller:pricerateController,
                style:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
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
                keyboardType:TextInputType.number,
                controller:tolaquantityController,
                style:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
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
                keyboardType:TextInputType.number,
                controller:mashaquantityController,
                style:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText:'enter masha quantity',
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
                keyboardType:TextInputType.number,
                controller:rattiquantityController,
                style:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText:'enter ratti quantity',
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
                keyboardType:TextInputType.number,
                controller:pointsquantityController,
                style:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText:'enter points quantity',
                  hintStyle:TextStyle(
                    color:Colors.yellow,
                    fontWeight:FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height:15),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed:(){
                double a=double.parse(pricerateController.text);
                double b=double.parse(tolaquantityController.text);
                double c=double.parse(mashaquantityController.text);
                double d=double.parse(rattiquantityController.text);
                double e=double.parse(pointsquantityController.text);
                totaltola=a*b;
                print("totaltola=$totaltola");

                totalmasha=a/12 *c;
                print("total masha=$totalmasha");
                totalratti=a/96 *d;
                print("total ratti=$totalratti");
                totalpoints=a/100 *e;
                print("total points=$totalpoints");
                totalbill=totaltola+totalmasha+totalratti+totalpoints;
                print("total bill=$totalbill");
                setState((){});
              },
              child:Text(
                'Calculate',
                style:TextStyle(
                  color:Colors.yellow,
                  fontSize:10,
                  fontWeight:FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height:10),
            Text('Total Tolaprice=$totaltola',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:15,
            )),
            SizedBox(height:10),
            Text('Total mashaprice=$totalmasha',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:15,
            )),
            SizedBox(height:10),
            Text('Total rattiprice=$totalratti',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:15,
            )),
            SizedBox(height:10),
            Text('Total pointsprice=$totalpoints',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:15,
            )),
            SizedBox(height:10),
            Text('Total bill=$totalbill',style:TextStyle(
              color:Colors.black,
              fontWeight:FontWeight.bold,
              fontSize:15,
            )),
            SizedBox(height:10),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed:(){
               pricerateController.clear();
               tolaquantityController.clear();
               mashaquantityController.clear();
               rattiquantityController.clear();
               pointsquantityController.clear();
               totaltola=0;
               totalmasha=0;
               totalratti=0;
               totalpoints=0;
               totalbill=0;
               setState(() {

               });
              },
              child:Icon(Icons.clear,color:Colors.yellow,size:20),
            ),
          ],
                ),
        ),
      ),
    );
  }
}
