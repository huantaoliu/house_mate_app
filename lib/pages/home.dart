import 'package:flutter/material.dart';
import 'package:house_mate/pages/agent/agent_page.dart';
import 'package:house_mate/pages/category/category_page.dart';
import 'package:house_mate/pages/story/story_main_page.dart';
import 'package:house_mate/pages/search/search_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          Category(),
          SearchPage(),
          AgentPage(),
          StoryMainPage(),
        ],
        controller: tabController,
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColor,
        child: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              text: 'Categories',
              icon: Icon(Icons.toys),
            ),
            Tab(
              text: 'Search',
              icon: Icon(Icons.search),
            ),
            Tab(
              text: 'Agent',
              icon: Icon(Icons.person_pin),
            ),
            Tab(
              text: 'Form',
              icon: Icon(Icons.format_align_justify),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     // Navigator.pushReplacementNamed(context, '/agent');
      //   },
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
