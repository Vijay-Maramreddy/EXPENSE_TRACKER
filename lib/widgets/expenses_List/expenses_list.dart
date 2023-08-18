
import 'dart:math';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_List/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget{
  const ExpensesList({required this.expenses,super.key,required this.onRemoveExpense,});
  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context){
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx,index) =>Dismissible(key:ValueKey(expenses[index]),
            background: Container(color: Theme.of(context).colorScheme.error.withOpacity(0.65),),
            onDismissed:(direction){onRemoveExpense(expenses[index],
            );
          },
            child: ExpenseItem(expenses[index]),
        ),
    );
  }

}