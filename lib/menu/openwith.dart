import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpenWithPage extends StatefulWidget {
  @override
  _OpenWithPageState createState() => _OpenWithPageState();
}

class _OpenWithPageState extends State<OpenWithPage> {
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
