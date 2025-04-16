import 'package:flutter/material.dart';


class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection:Axis.vertical,
      child:Column(
        children: [
          SizedBox(height:20),
          Container(
            height:200,
            width:500,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color:Colors.black,
            ),
              child: Text(
                          'VARIABLES: variables are used to store informationto be referenced and manipulated in computer program',
                          style:TextStyle(
                            color:Colors.white,
                            fontSize:30,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
          ),
          Divider(thickness:8),
          SizedBox(height:50),
          Container(
            height:200,
            width:500,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color:Colors.black,
            ),
            child:Text(
              'DATATYPES: datatype is a collection or grouping of data values,which tells the compiler or interpreter how the programmer intends to use the data',
              style:TextStyle(
                color:Colors.white,
                fontSize:30,
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
          Divider(thickness:8),
          SizedBox(height:50),
          Container(
            height:200,
            width:500,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color:Colors.black,
            ),
            child:Text(
              'RULES FOR NAMING VARIABLES:Variable name must starts with a letter or underscore,contains only letters,numbers.or underscores,and cannot be reserved words',
              style:TextStyle(
                color:Colors.white,
                fontSize:30,
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
