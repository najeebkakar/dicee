
import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.teal
      ),
      title: 'Flutter Demo',
      home: Dicee(),
    );
  }
}
class Dicee extends StatefulWidget {
  const Dicee({super.key});
  @override
  State<Dicee> createState() => _DiceeState();

}

class _DiceeState extends State<Dicee> {
     int leftDiceNumber = 1;
     int rightDiceNumber = 2;
     void changeDiceeNumber(){
      setState(() {
       leftDiceNumber =Random().nextInt(6)+1;
     rightDiceNumber = Random().nextInt(6)+1;
      });
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
      ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                    changeDiceeNumber();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(child: TextButton(
                onPressed: (){
                  changeDiceeNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')))
            ],
          ),
        ),
      );
  }
}