import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrientationPage extends StatefulWidget {
  @override
  _OrientationPageState createState() => _OrientationPageState();
}

class _OrientationPageState extends State<OrientationPage> {
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
