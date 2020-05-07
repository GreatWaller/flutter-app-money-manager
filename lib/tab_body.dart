import 'package:flutter/material.dart';

class TabBody extends StatelessWidget {
  // final int index;
  final String title;
  PanalData data;
  TabBody({this.title}) {
    data = PanalData();
    data.totalBalance = 120;
    data.incomeMonthly = 200;
    data.outflowMonthly = 80;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(title),
        ),
        Card(
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.home),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      "Wallets",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      '￥${data.totalBalance.toString()}',
                      style: TextStyle(
                          fontSize: 18, color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "summary",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                margin: EdgeInsets.only(
                  left: 8.0,
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text(data.totalBalance.toString()),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PanalData {
  double totalBalance;
  double incomeMonthly;
  double outflowMonthly;
}
