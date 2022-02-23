import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CropPage extends StatefulWidget {
  @override
  _CropPageState createState() => _CropPageState();
}

class _CropPageState extends State<CropPage> {
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
