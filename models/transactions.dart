class Transaction {
  final String contact;
  final String number;
  final String amount;
  final String date;

  const Transaction({
    this.contact = '',
    this.number = '',
    this.amount = '',
    this.date = '',
  });
}

List<Transaction> transactions = [
  const Transaction(
    contact: 'Achat crédit pour le 78 481 94 31',
    number: '-2.000F',
    date: 'Déc. 26, 17:51',
  ),
  const Transaction(
    contact: 'Achat crédit pour le 78 481 94 31',
    number: '-2.000F',
    date: 'Déc. 26, 17:51',
  ),
  const Transaction(
    contact: 'Achat crédit pour le 78 481 94 31',
    number: '-2.000F',
    date: 'Déc. 26, 17:51',
  ),
];
