import 'package:flutter/material.dart';

import './product.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const ['a']]) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Column(children: [
      Container(
          constraints: BoxConstraints.expand(
            height: 135.0,
          ),
          padding: EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/paint.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0.0,
                bottom: 20.0,
                child: Text('Indoor Renovation',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white)),
              ),
              Positioned(
                left: 0.0,
                bottom: 0.0,
                child: Text('floor | painting',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white)),
              ),
              Positioned(
                right: 0.0,
                bottom: 0.0,
                child: Icon(Icons.more_horiz),
              ),
            ],
          ))
    ]);
  }

  Widget _buildProductList() {
    Widget productCards;
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCards = Container();
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildProductList();
  }
}
