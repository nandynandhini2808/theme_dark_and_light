import 'package:dashboard_light/utility/constants.dart';
import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  final int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 0,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      items: [
        getBottomNavigationItem(CommonText.home, 0, "assets/images/home.png"),
        getBottomNavigationItem(CommonText.loans, 1, "assets/images/loans.png"),
        getBottomNavigationItem(
            CommonText.contracts, 2, "assets/images/contracts.png"),
        getBottomNavigationItem(CommonText.teams, 3, "assets/images/teams.png"),
        getBottomNavigationItem(CommonText.chat, 4, "assets/images/chats.png"),
      ],
    );
  }

  BottomNavigationBarItem getBottomNavigationItem(
      String title, int index, String iconname) {
    return BottomNavigationBarItem(
        icon: getBottomNavigationIcon(index, iconname, title), label: title);
  }

  Widget getBottomNavigationIcon(int index, String iconName, String title) {
    return Container(
      width: double.infinity,
      child: Material(
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Image.asset(
                        iconName,
                      )),
                ],
              ),
              getBottomNavigationTitle(title, index),
            ],
          ),
        ),
      ),
    );
  }

  Widget getBottomNavigationTitle(String title, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        title,
        maxLines: 1,
      ),
    );
  }
}
