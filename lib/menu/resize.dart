import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReSizePage extends StatefulWidget {
  @override
  _ReSizePageState createState() => _ReSizePageState();
}

class _ReSizePageState extends State<ReSizePage> {
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
