import 'package:flutter/material.dart';
import 'package:xwallet/src/models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: transaction.amount > 0 ? Colors.green.shade50 : Colors.red.shade50,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: ListTile(
        leading: Icon(
          transaction.amount > 0 ? Icons.arrow_upward : Icons.arrow_downward,
          color: transaction.amount > 0 ? Colors.green : Colors.red,
        ),
        title: Text(transaction.description),
        subtitle: Text(
          formattedDate(transaction.date),
          style: const TextStyle(fontSize: 12),
        ),
        trailing: Text(
          transaction.amount.toStringAsFixed(2),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

String formattedDate(DateTime date) {
  return "${date.day}/${date.month}/${date.year}";
}
