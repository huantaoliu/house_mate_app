import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:house_mate/model/category.dart';
import 'package:house_mate/pages/agent/agent_page.dart';
import 'package:house_mate/pages/home.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:house_mate/pages/search/search_page.dart';
import 'package:house_mate/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:house_mate/redux/reducers.dart';

import './pages/home.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(HouseMateApp());
}

class HouseMateApp extends StatelessWidget {
  static final tabPageKey = GlobalKey<HomePageState>();
  final _routes = {
    '/agent': (BuildContext context) => AgentPage(),
    '/search': (BuildContext context) => SearchPage(),
  };
  @override
  Widget build(BuildContext context) {
    final Store<AppState> mainStore = Store<AppState>(
      appStateReducer,
      initialState: AppState.initialState(),
    );
    return StoreProvider<AppState>(
      store: mainStore,
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.blueAccent[200]),
        home: HomePage(key: tabPageKey),
        routes: _routes,
      ),
    );
  }
}
