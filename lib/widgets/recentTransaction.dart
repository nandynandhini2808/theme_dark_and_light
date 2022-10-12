import 'package:dashboard_light/model/recentTransactionModel.dart';
import 'package:dashboard_light/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentTransaction extends StatefulWidget {
  const RecentTransaction({super.key});

  @override
  State<RecentTransaction> createState() => _RecentTransactionState();
}

class _RecentTransactionState extends State<RecentTransaction> {
  List<RecentTransactionModel> transaction = [
    RecentTransactionModel(
        icon: "assets/images/vector_up_arrow.png", price: "-\$850.00"),
    RecentTransactionModel(
        icon: "assets/images/vector_up_arrow.png", price: "-\$850.00"),
    RecentTransactionModel(
        icon: "assets/images/vector_down_arrow.png", price: "+\$850.00"),
    RecentTransactionModel(
        icon: "assets/images/vector_down_arrow.png", price: "+\$850.00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: transaction.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                  leading: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(0, 69, 91, 1)),
                      child: Image.asset(transaction[index].icon.toString())),
                  trailing: Text(
                    transaction[index].price.toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                  title: Text(
                    CommonText.rent,
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: Text(
                    "Sat ·16 Jul · 9.00 pm",
                    style: TextStyle(fontSize: 12),
                  )),
            );
          }),
    );
  }
}
