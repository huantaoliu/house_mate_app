import 'package:flutter/material.dart';

import '../pages/products/products.dart';
import '../pages/products/product_add_btn.dart';

/// Statefull Widget uses two class work together and linked by createState()
/// _className is a class used locally( only in current file)
///
class ProductCtrl extends StatefulWidget {
  /// everything in widget object should be immutable, use final keyword
  final String startingProduct;

  ProductCtrl({this.startingProduct}) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductCtrl();
  }
}

class _ProductCtrl extends State<ProductCtrl> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager State] initState()');
    /// widget has access to widget object from state object
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductCtrl oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    /// call setState when want widget to reload
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(
      children: [
        Expanded(child: Products(_products)),
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductAddBtn(_addProduct),
        ),
      ],
    );
  }
}
