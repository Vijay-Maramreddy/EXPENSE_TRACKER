
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

  @override
  State<Expenses> createState(){
    return _ExpensesState();
  }
}
class _ExpensesState extends State<Expenses>{
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Column(
        children: [
          Text('column 1'),
          Text('Colomn 2'),
          Text('column 3'),
        ],
      ),
    );
  }
}