import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:focus_textfield/second_page.dart';

import 'main.dart';

class MainView extends StatefulWidget {
  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  static final GlobalKey mainViewKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          Navigator(
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => MyHomePage(title: "Search"),
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MyApp.navKey.currentState
              .push(MaterialPageRoute(builder: (context) => SecondPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
