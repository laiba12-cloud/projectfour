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
          FloatingActionButton(
            backgroundColor: Colors.yellow,
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
            child:Icon(Icons.clear,color:Colors.black,size:30),
          ),
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
                color:Colors.yellow,
                borderRadius:BorderRadius.circular(10),
                border:Border.all(width:2,color:Colors.black,)
              ),
              child:TextFormField(
                keyboardType:TextInputType.number,
                controller:pricerateController,
                style:TextStyle(
                  color:Colors.black,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText:' enter per tola price',
                  hintStyle:TextStyle(
                    color:Colors.black,
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
                color:Colors.yellow,
                borderRadius:BorderRadius.circular(10),
                border:Border.all(width:2,color:Colors.black,)
              ),
              child:TextFormField(
                keyboardType:TextInputType.number,
                controller:tolaquantityController,
                style:TextStyle(
                  color:Colors.black,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText:' enter tola quantity',
                  hintStyle:TextStyle(
                    color:Colors.black,
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
                color:Colors.yellow,
                borderRadius:BorderRadius.circular(10),
                border:Border.all(width:2,color:Colors.black,)
              ),
              child:TextFormField(
                keyboardType:TextInputType.number,
                controller:mashaquantityController,
                style:TextStyle(
                  color:Colors.black,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText:' enter masha quantity',
                  hintStyle:TextStyle(
                    color:Colors.black,
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
                color:Colors.yellow,
                borderRadius:BorderRadius.circular(10),
                border:Border.all(width:2,color:Colors.black,)
              ),
              child:TextFormField(
                keyboardType:TextInputType.number,
                controller:rattiquantityController,
                style:TextStyle(
                  color:Colors.black,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText:' enter ratti quantity',
                  hintStyle:TextStyle(
                    color:Colors.black,
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
                color:Colors.yellow,
                borderRadius:BorderRadius.circular(10),
                border:Border.all(width:2,color:Colors.black,)
              ),
              child:TextFormField(
                keyboardType:TextInputType.number,
                controller:pointsquantityController,
                style:TextStyle(
                  color:Colors.black,
                  fontWeight:FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border:InputBorder.none,
                  hintText:' enter points quantity',
                  hintStyle:TextStyle(
                    color:Colors.black,
                    fontWeight:FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height:15),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed:(){

                double priceTola=double.parse(pricerateController.text);
                double tolaQuantity=double.parse(tolaquantityController.text);
                double mashaQuantity=double.parse(mashaquantityController.text);
                double rattiQuantity=double.parse(rattiquantityController.text);
                double pointsQuantity=double.parse(pointsquantityController.text);
                totaltola=priceTola*tolaQuantity;
                print("totaltola=$totaltola");
               // double priceperMasha=

                totalmasha= (priceTola/12) *mashaQuantity;
                print("total masha=$totalmasha");
                //double priceperratti=priceTola/96;
                //totalratti=priceperratti*rattiQuantity;
                totalratti=(priceTola/96) *rattiQuantity;
                print("total ratti=$totalratti");
                totalpoints=(priceTola/100) *pointsQuantity;
                print("total points=$totalpoints");
                totalbill=totaltola+totalmasha+totalratti+totalpoints;
                print("total bill=$totalbill");
                setState((){});
              },
              child:Icon(Icons.calculate_outlined,color:Colors.yellow,size:30)
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
          ],
                ),
        ),
      ),
    );
  }
}
