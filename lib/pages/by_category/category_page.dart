import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    constraints: BoxConstraints.expand(
                      height: 138.0,
                    ),
                    padding:
                        EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
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
                          child: Icon(
                            Icons.more_horiz,
                          ),
                        ),
                      ],
                    )),
                Container(
                    constraints: BoxConstraints.expand(
                      height: 138.0,
                    ),
                    padding:
                        EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/plumbing.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0.0,
                          bottom: 20.0,
                          child: Text('Plumbering & Electricity',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white)),
                        ),
                        Positioned(
                          left: 0.0,
                          bottom: 0.0,
                          child: Text('Plumber | Electricity | Pipes',
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
                    )),
                Container(
                    constraints: BoxConstraints.expand(
                      height: 138.0,
                    ),
                    padding:
                        EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/backyard.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0.0,
                          bottom: 20.0,
                          child: Text('Back Yard',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white)),
                        ),
                        Positioned(
                          left: 0.0,
                          bottom: 0.0,
                          child: Text('Deck | Grass | Fence',
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
                    )),
                Container(
                    constraints: BoxConstraints.expand(
                      height: 138.0,
                    ),
                    padding:
                        EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/moving.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0.0,
                          bottom: 20.0,
                          child: Text('Moving',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white)),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0.0,
                          child: Text('Van | Arrange a pickup',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  color: Colors.white)),
                        ),
                        Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ))
              ]),
        )
      ],
    );
  }
}
