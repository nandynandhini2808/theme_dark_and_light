import 'dart:ui';

import 'package:dashboard_light/utility/constants.dart';
import 'package:dashboard_light/widgets/countryPrices.dart';
import 'package:dashboard_light/widgets/navigationBar.dart';
import 'package:dashboard_light/widgets/recentTransaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 159, 10, 1)),
                      child: Center(
                          child: Text(
                        CommonText.profileName,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 280.0),
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          "assets/images/notification.png",
                        ))),
              ]),
            ),
            const CountryPrices(),
            showAlertData(),
            recentData(),
            const RecentTransaction()
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarWidget(),
    );
  }

  Widget showAlertData() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(0, 69, 91, 1)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: Text(
              CommonText.actionRequired,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    CommonText.actionDefinition,
                    maxLines: 2,
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(12, 171, 223, 13),
                  ),
                  child: Center(
                    child: Text(
                      CommonText.complete,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget recentData() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 8.0, right: 8.0, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text(
              CommonText.recentTransaction,
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          const SizedBox(
            width: 120,
          ),
          Container(
            child: Text(
              CommonText.seeAll,
              style: TextStyle(color: Colors.blue, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
