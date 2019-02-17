import 'package:flutter/material.dart';
import 'package:house_mate/model/category.dart';

class Category extends StatelessWidget {
  final categoryList = [
    CategoryM('assets/paint.jpg', 'Indoor Renovation', 'Floor | Paint'),
    CategoryM('assets/plumbing.jpg', 'Plumbering & Electricity',
        'Plumber | Pipes | Electricity'),
    CategoryM('assets/deck.jpg', 'Back Yard', 'Deck | Grass | Fence'),
    CategoryM('assets/moving.jpeg', 'Moving', 'Van | Arrange a pickup')
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < 4; i++) {
      list.add(Expanded(
          child: Container(
              padding: EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(categoryList[i].image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0.0,
                    bottom: 20.0,
                    child: Text(categoryList[i].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white)),
                  ),
                  Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    child: Text(categoryList[i].subTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.white)),
                  ),
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: IconButton(
                      icon: Icon(Icons.more_horiz),
                      tooltip: 'More',
                      onPressed: () {
                        print(' ah, clicked');
                      },
                    ),
                  ),
                ],
              ))));
    }
    ;

    return Column(
      children: [
        Expanded(
          child: Column(children: list),
        )
      ],
    );
  }
}
