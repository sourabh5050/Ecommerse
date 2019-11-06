import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        //crossAxisCount: 2,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'T-shirt',
          ),
          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'Dresses',
          ),
          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'Informal Wear',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'Formal Wear',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_caption, this.image_location});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
