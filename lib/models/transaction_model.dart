class TransactionModel {
  final String title, date, price;
  final bool isWithdraw;

  const TransactionModel(
      {required this.title,
      required this.date,
      required this.price,
      required this.isWithdraw});
}
