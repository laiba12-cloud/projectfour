import 'package:flutter/material.dart';

class EvenNumberClass extends StatefulWidget {
  const EvenNumberClass({super.key});

  @override
  State<EvenNumberClass> createState() => _EvenNumberClassState();
}

class _EvenNumberClassState extends State<EvenNumberClass> {
  TextEditingController numberController=TextEditingController();
  String result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('TO find Even or Odd',style: TextStyle(color: Colors.white),),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purpleAccent),
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              controller: numberController,
              style: TextStyle(color: Colors.purpleAccent),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.calculate_outlined,color: Colors.purpleAccent,),
                hintText: 'Enter a number',
                hintStyle: TextStyle(color: Colors.purpleAccent)
              ),
            ),
            
          ),
        ),
        SizedBox(height: 20,),
        Text('Number is $result',style: TextStyle(color: Colors.purpleAccent),),
        SizedBox(height: 10,),
        
        Container(
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextButton(onPressed: (){
              int n=int.parse(numberController.text);
              int mod=n%2;
              if(mod==0)
                {
                  result='Even';
                  print(result);
                  setState(() {

                  });
                }
              else
                {
                  result='Odd';
                  setState(() {

                  });
                }

            }, child: Text('Calculate',style: TextStyle(color: Colors.white),))),
        SizedBox(height: 10,),
        Container(
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextButton(onPressed: (){
              result='';
              numberController.clear();
              setState(() {

              });

            }, child: Text('Clear',style: TextStyle(color: Colors.white),))),
      ],),
    );
  }
}
