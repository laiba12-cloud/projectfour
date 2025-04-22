import 'package:flutter/material.dart';
import 'package:untitled/Goldjewapp.dart';
import 'package:untitled/LogInAdvance.dart';
import 'package:untitled/dressesshop.dart';
import 'package:untitled/even-numbers.dart';
import 'package:untitled/evenodd.dart';
import 'package:untitled/Goldjewapp.dart';
import 'package:untitled/login.dart';
import 'package:untitled/swapscreen.dart';
import 'package:untitled/swapwithout.dart';
import 'package:untitled/wapda.dart';
//import 'package:untitled/swapscreen.dart';
//import 'package:untitled/textform.dart';
//import 'package:untitled/burgersclass.dart';
//import 'package:untitled/setstate.dart';
//import 'package:untitled/buttonsclass.dart';
//import 'package:untitled/homescreen.dart';
//import 'package:untitled/hometask.dart';
//import 'package:untitled/login.dart';
//import 'package:untitled/signup.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LogInAdvanceScreen()
      //GoldJewAppScreen()
     //EvenNumberClass()
      //WapdaScreen()
      //DressShopScreen()
      //EvenOddScreen()
      //SwapWithoutScreen()
      //LogInAdvanceScreen()
      //LoginScreen()
      //SwapClassScreen()
      //TextFormScreen()
      //Language()
      //SignUpScreen()
     //LoginScreen()
      //ButtonClassScreen()
      //HomeClassScreen()
      //BurgerClassScreen()
      //SetStateScreen()
    );
  }
}
