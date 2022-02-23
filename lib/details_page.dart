

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'menu/crop.dart';
import 'menu/delete.dart';
import 'menu/detail.dart';
import 'menu/orientation.dart';
import 'menu/rename.dart';
import 'menu/resize.dart';
import 'menu/setas.dart';
import 'menu/slide.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final int index;
  DetailsPage(
      {@required this.imagePath,
      @required this.title,
      @required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
            ),
            actions: <Widget>[
              LikeButton(
                size: 20,
                circleColor:
                CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                bubblesColor: BubblesColor(
                  dotPrimaryColor: Color(0xff33b5e5),
                  dotSecondaryColor: Color(0xff0099cc),
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.favorite,
                    color: isLiked ? Colors.deepOrangeAccent : Colors.white,
                    size: 20,
                  );
                },
                likeCount: 0,
                countBuilder: (int count, bool isLiked, String text) {
                  var color = isLiked ? Colors.deepOrangeAccent : Colors.grey;
                  Widget result;
                  if (count == 0) {
                    result = Text(
                      text,
                      style: TextStyle(color: color),
                    );
                  } else
                    result = Text(
                      text,
                      style: TextStyle(color: color),
                    );
                  return result;
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.search),
              ),
            PopupMenuButton<int>(
              color: Colors.lightBlueAccent,
              onSelected: (item) => handleClick(item,context),
              itemBuilder: (context) => [
                PopupMenuItem<int>(value: 0, child: Text('Crop')),
                PopupMenuItem<int>(value: 1, child: Text('Rename')),
                PopupMenuItem<int>(value: 2, child: Text('Slide Show')),
                PopupMenuItem<int>(value: 3, child: Text('Set As')),
                PopupMenuItem<int>(value: 4, child: Text('Details')),
                PopupMenuItem<int>(
                  value: 5,
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(text: 'Set Orientations'),
                        WidgetSpan(
                            child: Icon(Icons.arrow_right, color: Colors.black, size: 25,)),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem<int>(value: 6, child: Text('Delete')),
                PopupMenuItem<int>(value: 7, child: Text('Resize')),
                PopupMenuItem<int>(value: 8, child: Text('Copy to')),
                PopupMenuItem<int>(value: 9, child: Text('Move to')),
                PopupMenuItem<int>(value: 10, child: Text('Copy to')),
                PopupMenuItem<int>(value: 11, child: Text('Move to')),
              ],
            ),
          ],
          ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
              child: Hero(
                tag: 'logo$index',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
      ],
    ),
    ),
      );
  }

  void handleClick(int item,BuildContext context) {
    switch (item) {
      case 0:
        //Crop
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>CropPage() ));
        break;
      case 1:
        //rename
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RenamePage()));
        break;
      case 2:
      //Slide Show
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SlidePage()));
        break;
      case 3:
      //Set As
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SetAsPage()));
        break;
      case 4:
      //Details
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage()));
        break;
      case 5:
      //Set Orientations
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrientationPage()));
        break;
      case 6:
      //Delete
      Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DeletePage()));
        break;
      case 7:
        //ReSize
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReSizePage()));
        break;
      case 8:
      //rename
      /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page()),*/
        break;
      case 9:
      //rename
      /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CropPage()),*/
        break;
      case 10:
      //rename
      /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CropPage()),*/
        break;
      case 11:
      //rename
      /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CropPage()),*/
        break;
    }
  }
}

