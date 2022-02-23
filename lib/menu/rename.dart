import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RenamePage extends StatefulWidget {
  @override
  _RenamePageState createState() => _RenamePageState();
}

class _RenamePageState extends State<RenamePage> {
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
