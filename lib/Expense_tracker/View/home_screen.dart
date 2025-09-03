import 'package:flutter/material.dart';
import 'package:recipe_app/Expense_tracker/Widgets/add_transaction.dart';
import 'package:recipe_app/Expense_tracker/Widgets/summary_card.dart';
import 'package:recipe_app/Expense_tracker/Widgets/transaction_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Expense Tracker"))),
      body: Column(
        children: [
          SummaryCard(),
          Expanded(child: TransactionList()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => AddTransaction(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
