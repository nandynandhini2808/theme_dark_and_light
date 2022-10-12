import 'package:dashboard_light/model/countryFlagAndPriceModel.dart';
import 'package:flutter/material.dart';

class CountryPrices extends StatefulWidget {
  const CountryPrices({super.key});

  @override
  State<CountryPrices> createState() => _CountryPricesState();
}

class _CountryPricesState extends State<CountryPrices> {
  int _index = 0;

  List<CountryFlagAndText> list = [
    CountryFlagAndText(
        price: "£15,256,486.00",
        currencyType: "Main · GBP",
        icon: "assets/images/first.png"),
    CountryFlagAndText(
        price: "\$14,897,421.60",
        currencyType: "USD",
        icon: "assets/images/second.png"),
    CountryFlagAndText(
        price: "\$18,585,625.89",
        currencyType: "CAD",
        icon: "assets/images/third.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: list.length,
        controller: PageController(viewportFraction: 0.5),
        onPageChanged: (int index) {
          setState(() {
            _index = index;
          });
        },
        itemBuilder: (BuildContext context, int index) {
          return Transform.scale(
            scale: index == _index ? 0.9 : 0.6,
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      child: Image.asset(
                        list[index].icon.toString(),
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(list[index].price.toString()),
                  SizedBox(
                    height: 20,
                  ),
                  Text(list[index].currencyType.toString()),
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
