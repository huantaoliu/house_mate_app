import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:house_mate/controller/view_model.dart';
import 'package:house_mate/redux/app_state.dart';
import 'package:redux/redux.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreConnector<AppState, ViewModel>(
        converter: (Store<AppState> store) => ViewModel.create(store),
        builder: (BuildContext context, ViewModel viewModel) => Scaffold(
              appBar: AppBar(
                title: Text(viewModel.categoryInSearch.title),
                centerTitle: true,
              ),
              body: Column(
                children: [Text(viewModel.categoryInSearch.title)],
              ),
            ));
  }
}
