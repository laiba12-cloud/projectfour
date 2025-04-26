import 'package:flutter/material.dart';
import 'package:untitled/Goldjewapp.dart';
import 'package:untitled/burgersclass.dart';
import 'package:untitled/whatsappchat.dart';

class LogInAdvanceScreen extends StatefulWidget {
  const LogInAdvanceScreen({super.key});

  @override
  State<LogInAdvanceScreen> createState() => _LogInAdvanceScreenState();
}

class _LogInAdvanceScreenState extends State<LogInAdvanceScreen> {
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar:AppBar(
        backgroundColor: Colors.black,
        leading:Icon(Icons.login,color:Colors.yellow),
        title:Text(
          'Login',style:TextStyle(
          color:Colors.yellow,
          fontWeight:FontWeight.bold,
          fontSize:20,
        ),
        ),
        centerTitle:true,

      ),
      body:Center(
        child: Column(
          children:[
            SizedBox(height:40),
            Container(
              height:40,
              width:260,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color:Colors.black,
              ),
              child:TextFormField(
                controller:emailController,
                style:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
                decoration:InputDecoration(
                  hintText:'enter your email',
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
              width:260,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color:Colors.black,
              ),
              child:TextFormField(
                controller: passwordController,
                style:TextStyle(
                  color:Colors.yellow,
                  fontWeight:FontWeight.bold,
                ),
                decoration:InputDecoration(
                  hintText:'enter your password',
                  hintStyle:TextStyle(
                    color:Colors.yellow,
                    fontWeight:FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height:40),
            FloatingActionButton(
              onPressed: (){
                String email=emailController.text;
                String password=passwordController.text;
                if(email=='laiba@gmail.com')
                {
                  if(password=="1234")
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>GoldJewAppScreen())
                    );
                  }
                  else
                  {
                    print("password is incorrect");
                  }
                }
                else {
                  print("email is incorrect");
                }
              },
              child:Text(
                'Login',style:TextStyle(
                color:Colors.black,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
