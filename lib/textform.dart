import 'package:flutter/material.dart';

class TextFormScreen extends StatefulWidget {
  const TextFormScreen({super.key});


  @override
  State<TextFormScreen> createState() => _TextFormScreenState();
}

class _TextFormScreenState extends State<TextFormScreen>{


int result=0;
int add=0;
int sub=0;
int mul=0;
double div=0;
double mod=0;
TextEditingController n1Controller=TextEditingController();
TextEditingController n2Controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar:AppBar(
        backgroundColor: Colors.pink,
        title:Text(
          'SetState',style:TextStyle(
          color:Colors.black,
          fontSize:25,
          fontWeight:FontWeight.bold,
        ),
        ),
      ),
        body:SingleChildScrollView(
          child:
            Column(
                  children:[
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:20,vertical:10),
                  child:Text(
                    'Results of Arithmatic Operators by getting Input from User',
                    style:TextStyle(
                      color:Colors.black,
                      fontSize:30,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical:15),
                  child:Container(
                    decoration:BoxDecoration(
                      color:Colors.purple,
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child:TextFormField(
                      controller:n1Controller,
                      style:TextStyle(
                       color:Colors.red,
                       fontSize:10,
                    ),
                      decoration:InputDecoration(
                        hintText:'enter 1st number',
                        hintStyle:TextStyle(
                        color:Colors.red,
                        fontSize:10,
                        fontWeight:FontWeight.bold,
                        ),
                        prefixIcon:Icon(Icons.mail),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:50,vertical:10),
                  child:Container(
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:Colors.purple,
                    ),
                    child:TextFormField(
                      controller:n2Controller,
                      style:TextStyle(
                        color:Colors.red,
                        fontSize:10,
                        fontWeight:FontWeight.bold,
                      ),

                      decoration:InputDecoration(
                        hintText:'enter 2nd number',
                        hintStyle:TextStyle(
                          color:Colors.red,
                          fontSize:10,
                          fontWeight:FontWeight.bold,
                        ),
                        prefixIcon:Icon(Icons.mail),
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                    onPressed:(){
                      int a=int.parse(n1Controller.text);
                      int b=int.parse(n2Controller.text);
                      add=a+b;
                      setState((){});
                      print("add=$add");
                    },
                  child:Icon(Icons.add),
                  ),
                Text(
                  'Addition=$add',
                  style:TextStyle(
                    color:Colors.red,
                    fontSize:15,
                  ),
                ),
                SizedBox(height:15),
                FloatingActionButton(
                  onPressed:(){
                    int a=int.parse(n1Controller.text);
                    int b=int.parse(n2Controller.text);
                    sub=a-b;
                    setState((){});
                    print("sub=$sub");
                  },
                  child:Icon(Icons.remove),
                ),
                Text(
                  'subtraction=$sub',
                  style:TextStyle(
                    color:Colors.red,
                    fontSize:20,
                  ),
                ),
                    SizedBox(height:15),
                    FloatingActionButton(
                      onPressed:(){
                        int a=int.parse(n1Controller.text);
                        int b=int.parse(n2Controller.text);
                        mul=a*b;
                        setState((){});
                        print("mul=$mul");
                      },
                      child:Icon(Icons.clear),
                    ),
                    Text(
                      'multiplication=$mul',
                      style:TextStyle(
                        color:Colors.red,
                        fontSize:20,
                      ),
                    ),

                    SizedBox(height:15),
                    FloatingActionButton(
                      onPressed:(){
                        double a=double.parse(n1Controller.text);
                        double b=double.parse(n2Controller.text);
                        div=a/b;
                        setState((){});
                        print("div=$div");
                      },
                      child:Text(
                        '/'
                      ),
                    ),
                    Text(
                      'division=$div',
                      style:TextStyle(
                        color:Colors.red,
                        fontSize:20,
                      ),
                    ),

                    SizedBox(height:15),
                    FloatingActionButton(
                      onPressed:(){
                        double a=double.parse(n1Controller.text);
                        double b=double.parse(n2Controller.text);
                        mod=a*b/100;
                        setState((){});
                        print("mod=$mod");
                      },
                      child:Icon(Icons.percent),
                    ),
                    Text(
                      'modulos=$mod',
                      style:TextStyle(
                        color:Colors.red,
                        fontSize:20,
                      ),
                    ),
                ],
              ),
        ),

    );
  }
}
