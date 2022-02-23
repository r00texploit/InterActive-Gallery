import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateShortCutPage extends StatefulWidget {
  @override
  _CreateShortCutPageState createState() => _CreateShortCutPageState();
}

class _CreateShortCutPageState extends State<CreateShortCutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
