 import 'package:xwallet/src/models/transaction_model.dart';

final List<Transaction> transactions = [
    Transaction(
        date: DateTime(2024, 3, 4),
        description: "Grocery shopping",
        amount: -50.00,
        category: "Food"),
    Transaction(
        date: DateTime(2024, 3, 3),
        description: "Salary deposit",
        amount: 2000.00,
        category: "Income"),
    Transaction(
        date: DateTime(2024, 3, 2),
        description: "Movie ticket",
        amount: -15.00,
        category: "Entertainment"),
    Transaction(
        date: DateTime(2024, 3, 1),
        description: "Electricity bill",
        amount: -100.00,
        category: "Utilities"),
    Transaction(
        date: DateTime(2024, 2, 29),
        description: "Dinner at restaurant",
        amount: -80.00,
        category: "Food"),
    Transaction(
        date: DateTime(2024, 2, 28),
        description: "Salary deposit",
        amount: 2000.00,
        category: "Income"),
  ];