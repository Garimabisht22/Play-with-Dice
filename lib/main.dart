import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(
              backgroundColor: Color(0xf0b71c1c),
              title: Center(
                child: Text('Dice Game'),
              ),
            ),
            body: MyDice()),
      ),
    ),
  );
}
class MyDice extends StatefulWidget {
  const MyDice({Key key}) : super(key: key);

  @override
  _MyDiceState createState() => _MyDiceState();
}
class _MyDiceState extends State<MyDice> {
  int ldiceno = Random().nextInt(6)+1 , rdiceno=Random().nextInt(6)+1;
  void changeface(){
    setState(() {
      ldiceno= Random().nextInt(6)+1 ;
      rdiceno= Random().nextInt(6)+1 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeface();
              } ,
              child: Image(
                image: AssetImage('assets/images/dice$ldiceno.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeface();
              },
              child: Image(
                image: AssetImage('assets/images/dice$rdiceno.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
