import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CopyToPage extends StatefulWidget {
  @override
  _CopyToPageState createState() => _CopyToPageState();
}

class _CopyToPageState extends State<CopyToPage> {
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
