
import 'package:expense_tracker/widgets/expenses_List/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/new_expense.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});


  @override
  State<Expenses> createState(){
    return _ExpensesState();
  }
}
class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses=[
    Expense(amount: 19.99, title: 'flutter course', date: DateTime.now(), category: Category.work),
    Expense(amount: 15.99, title: 'movie', date: DateTime.now(), category: Category.leisure),
  ];
  void _openAddExpenseOverlay(){
    showModalBottomSheet(isScrollControlled: true,context: context, builder: (ctx)=>NewExpense(onAddExpense:_addExpense),);
  }
  void _addExpense(Expense expense){
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense){
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions:[
          IconButton(onPressed: _openAddExpenseOverlay,
              icon:const Icon(Icons.add))
        ]
      ),
      body: Column(
        children: [
          const Text('column 1'),
          Expanded(child: ExpensesList(
              expenses: _registeredExpenses,
              onRemoveExpense:_removeExpense),
          ),
        ],
      ),
    );
  }
}