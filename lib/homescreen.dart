import 'package:flutter/Material.dart';
class HomeClassScreen extends StatelessWidget {
  const HomeClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body:Center(
        child:Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text
                            (
                'Welcome to Gold jewellary App',style:TextStyle(
                color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize:30,
                            ),
                            ),
              ),
          ),
    );
  }
}
