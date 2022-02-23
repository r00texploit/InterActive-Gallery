import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetAsPage extends StatefulWidget {
  @override
  _SetAsPageState createState() => _SetAsPageState();
}

class _SetAsPageState extends State<SetAsPage> {
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
