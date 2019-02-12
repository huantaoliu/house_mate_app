import 'package:flutter/material.dart';

class ProductAddBtn extends StatelessWidget {
  final Function addProduct;

  ProductAddBtn(this.addProduct);

  @override
    Widget build(BuildContext context) {
      return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              addProduct('Sweets');
            },
            child: Text('Add Product'),
          );
    }
}