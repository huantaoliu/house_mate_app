import 'package:flutter/material.dart';
import 'package:house_mate/controller/view_model.dart';
import 'package:house_mate/main.dart';
import 'package:house_mate/model/category.dart';
import 'package:house_mate/pages/category/category_page.dart';

class CategoryWidget extends StatelessWidget {
  final ViewModel model;
  final CategoryM item;

  CategoryWidget(this.model, this.item);

  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(children: <Widget>[
                Positioned(
                  left: 0.0,
                  bottom: 20.0,
                  child: Text(item.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white)),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  child: Text(item.subTitle,
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
                      model.onUpdateCategoryInSearch(this.item);
                      HouseMateApp.tabPageKey.currentState.tabController
                          .animateTo(1);
                    },
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
