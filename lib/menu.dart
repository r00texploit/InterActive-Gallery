/*
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class Menu {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  menu() {
  return SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        openCloseDial: isDialOpen,
        backgroundColor: Colors.redAccent,
        overlayColor: Colors.grey,
        overlayOpacity: 0.5,
        spacing: 15,
        spaceBetweenChildren: 15,
        closeManually: true,
        child: const Text("Menu",style: TextStyle(fontSize: 30),),
      );
    SpeedDialChild(
        child: Icon(Icons.mail),
        label: 'Mail',
        onTap: (){
          print('Mail Tapped');
        }
    );
    SpeedDialChild(
        child: Icon(Icons.copy),
        label: 'Copy',
        onTap: (){
          print('Copy Tapped');
        }
    ),
  ],
    );
}
}
*/
