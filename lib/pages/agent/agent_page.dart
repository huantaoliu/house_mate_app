import 'package:flutter/material.dart';

class AgentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Infinite List'),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: () {}),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('data'),
          ],
        ),
      ),
    );
  }
}
