import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/Expense_tracker/Provider/transaction_provider.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Monthly Summary",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Income: \$${transactionProvider.totalIncome.toStringAsFixed(3)}",
                ),
                Text(
                  "Total Expense: \$${transactionProvider.totalExpense.toStringAsFixed(3)}",
                ),
              ],
            ),
            SizedBox(height: 9),
            Text(
              "Remaining Balance: \$${transactionProvider.remainingBalance.toStringAsFixed(3)},",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
