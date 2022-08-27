import 'package:flutter/material.dart';

import './transaction_item.dart';
import '../models/transaction.dart';

class Transactions extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        imageUrl: 'assets/icons/mtn.png',
        title: 'Deposit Airtime',
        date: 'Aug 20, 2022',
        amount: 2000.0),
    Transaction(
        imageUrl: 'assets/icons/airtel.jpg',
        title: 'Deposit Airtime',
        date: 'Aug 20, 2022',
        amount: 2000.0),
    Transaction(
        imageUrl: 'assets/icons/9mobile.png',
        title: 'Deposit Airtime',
        date: 'Aug 20, 2022',
        amount: 2000.0),
    Transaction(
        imageUrl: 'assets/icons/glo.jpg',
        title: 'Deposit Airtime',
        date: 'Aug 20, 2022',
        amount: 200.0),
    Transaction(
        imageUrl: 'assets/icons/glo.jpg',
        title: 'Deposit Airtime',
        date: 'Aug 20, 2022',
        amount: 200.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Transactions',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlueAccent,
                  ),
                )
              ],
            ),
          ),
          ...transactions
              .map(
                (tx) => TransactionItem(
                  tx.imageUrl,
                  tx.title,
                  tx.date,
                  tx.amount,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
