import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:house_mate/pages/by_agent/agent_page.dart';

import './pages/home.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(HouseMateApp());
}

class HouseMateApp extends StatelessWidget {
  final _routes = {
    '/agent': (BuildContext context) => AgentPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.blueAccent[200]),
      home: HomePage(),
      routes: _routes,
    );
  }
}
