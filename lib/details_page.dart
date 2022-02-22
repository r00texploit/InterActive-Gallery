import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

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
              onSelected: (item) => handleClick(item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(value: 0, child: Text('Crop')),
                PopupMenuItem<int>(value: 1, child: Text('Rotate Left')),
                PopupMenuItem<int>(value: 2, child: Text('Rotate Right')),
                PopupMenuItem<int>(value: 3, child: Text('Rename')),
                PopupMenuItem<int>(value: 4, child: Text('Slide Show')),
                PopupMenuItem<int>(value: 5, child: Text('Set As')),
                PopupMenuItem<int>(value: 6, child: Text('Details')),
                PopupMenuItem<int>(value: 7, child: Text('Settings')),
                PopupMenuItem<int>(value: 8, child: Text('Delete')),
                PopupMenuItem<int>(value: 9, child: Text('Resize')),
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

  void handleClick(int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        break;
    }
  }
}
