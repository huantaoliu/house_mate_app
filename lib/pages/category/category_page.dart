import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:house_mate/controller/view_model.dart';
import 'package:house_mate/model/category.dart';
import 'package:house_mate/pages/category/category_widget.dart';
import 'package:house_mate/redux/app_state.dart';
import 'package:redux/redux.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Please Login'),
                  leading: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar.jpg'),
                    ),
                  )),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Service Helper'),
        ),
        body: StoreConnector<AppState, ViewModel>(
          converter: (Store<AppState> store) => ViewModel.create(store),
          builder: (BuildContext context, ViewModel viewModel) => Column(
                children: viewModel.categories
                    .map((CategoryM item) => CategoryWidget(viewModel, item))
                    .toList(),
              ),
        ));
  }
}
