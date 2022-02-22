import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/1.jpg',
    title: 'New Year',
    ),
  ImageDetails(
    imagePath: 'images/2.jpg',
    title: 'Spring',
    ),
  ImageDetails(
    imagePath: 'images/3.jpg',
    title: 'Casual Look',
  ),
  ImageDetails(
    imagePath: 'images/4.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/5.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/6.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/7.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/8.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/9.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/10.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/11.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/12.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/13.jpg',
    title: 'New York',
    ),
  ImageDetails(
    imagePath: 'images/14.jpg',
    title: 'Cone Ice Cream',
    ),
  ImageDetails(
    imagePath: 'images/15.jpg',
    title: 'Pink Ice Cream',
    ),
  ImageDetails(
    imagePath: 'images/16.jpg',
    title: 'Strawberry Ice Cream',
    ),
];
List<bool> isFavorited = List.filled(_images.length,false);
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'InterActive Gallery',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String title;
  ImageDetails({
    @required this.imagePath,
    @required this.title,
  });
}
