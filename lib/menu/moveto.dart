import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoveToPage extends StatefulWidget {
  @override
  _MoveToPageState createState() => _MoveToPageState();
}

class _MoveToPageState extends State<MoveToPage> {
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
