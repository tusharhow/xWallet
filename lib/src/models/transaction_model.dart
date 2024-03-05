class Transaction {
  final DateTime date;
  final String description;
  final double amount;
  final String? category;

  Transaction({
    required this.date,
    required this.description,
    required this.amount,
    this.category,
  });
}