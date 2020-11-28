import 'package:SkyscraperTracker/model/skyscraper.dart';
import 'package:SkyscraperTracker/skyscraper_list_page.dart';
import 'package:flutter/material.dart';

import 'info_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skyscraper Tracker',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  List<Skyscraper> _skyscrapers = [Skyscraper(name: "yes")];
  final List<Tab> tabs = <Tab>[
    Tab(text: 'Skyscrapers'),
    Tab(text: 'Info'),
  ];

  @override
  Widget build(BuildContext context) {
    print(_skyscrapers);
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Skyscraper Tracker"),
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(children: [
            SkyscraperListPage(
              skyscrapers: _skyscrapers,
            ),
            InfoPage()
          ]),
        ));
  }
}
