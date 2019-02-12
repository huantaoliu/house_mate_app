import 'package:flutter/material.dart';
import 'package:house_mate/pages/by_agent/agent_page.dart';
import 'package:house_mate/pages/by_category/category_page.dart';
import 'package:house_mate/pages/by_story/story_main_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Uer Manage'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('House Mate'),
      ),
      body: TabBarView(
        children: <Widget>[Category(), AgentPage(), StoryMainPage()],
        controller: tabController,
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColor,
        child: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              text: 'Categories',
            ),
            Tab(
              text: 'Agent',
            ),
            Tab(
              text: 'Form',
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/agent');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
