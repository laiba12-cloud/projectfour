import 'package:flutter/material.dart';

class SetStateScreen extends StatefulWidget {
  const SetStateScreen({super.key});

  @override
  State<SetStateScreen> createState() => _SetStateScreenState();
}

class _SetStateScreenState extends State<SetStateScreen> {
  int add=0;
  int sub=0;
  int mul=0;
  double div=0;
  double mod=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title:Text(
          'SetState',style:TextStyle(
          color:Colors.black,
          fontSize:25,
          fontWeight:FontWeight.bold,
        ),
        ),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
          Column(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Arithmatic Operators',style:TextStyle(
                  color:Colors.red,
                  fontWeight:FontWeight.bold,
                  fontSize:30,
                ),
                ),

              ),
              SizedBox(height:10),

              Text(
                'addition=$add'
              ),
              SizedBox(height:10),
              FloatingActionButton(
                backgroundColor: Colors.red,
              onPressed:(){
                int a=2;
                int b=4;
                add=a+b;
                setState((){});
                print("add=$add");
              },
              child:Icon(Icons.add),
              ),
              SizedBox(height:10),
              Text(
                'Subtraction=$sub'
              ),
              SizedBox(height:10),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed:(){
                  int a=2;
                  int b=4;
                  sub=b-a;
                  setState((){});
                  print("sub=$sub");
                },
                child:Icon(Icons.remove),
              ),
                 SizedBox(height:10),
              Text(
                  'Multiplication=$mul'
              ),
              SizedBox(height:10),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed:() {
    int a = 2;
    int b = 4;
    mul = a*b;
    setState(() {});
    print("mul=$mul");
    },
    child:TextButton(
    onPressed: (){},
    child:Text(
    '*',
    ),
    ),

                ),
              SizedBox(height:10),
              Text('Division=$div',),
              FloatingActionButton(
                backgroundColor: Colors.red,
                  onPressed:(){
                  double a=2.0;
                    double b=4.0;
                    div=a/b;
                    setState((){});
                    print("div=$div");
                  },
                  child:TextButton(
                    onPressed: (){
                    },
                    child:Text(
                      '/',
                    ),
                  )
              ),

          SizedBox(height:10),
              Text(
                'Modulos=$mod',
              ),
              SizedBox(height:10),
              FloatingActionButton(
                backgroundColor: Colors.red,
                  onPressed:(){
                    double a=2.0;
                    double b=4.0;
                    mod=a/b*100;
                      setState((){});
                    print("modulos=$mod");
                  },
                  child:TextButton(
                    onPressed: (){
                    },
                    child:Text(
                      '%',
                    ),
                  )
              ),

          ],
          ),
      ),
    );
  }
}
