import 'package:flutter/material.dart';

class NewRecord extends MaterialPageRoute<Null> {
  NewRecord():super(builder:(BuildContext ctx){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(ctx).primaryColor,
        elevation: 1.0,
      ),
      body:Center(
      child: Container(
        child: Text("data"),
      ),
    ));
  });
}

