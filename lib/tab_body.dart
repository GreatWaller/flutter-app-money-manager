import 'package:flutter/material.dart';

class TabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("setting"),
      ),
      body: Center(
        child: Container(
          child: Text("data"),
        ),
      ),
    );
  }
}
