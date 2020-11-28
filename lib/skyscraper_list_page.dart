import 'package:SkyscraperTracker/row/skyscraper_row.dart';
import 'package:flutter/material.dart';

import 'model/skyscraper.dart';

class SkyscraperListPage extends StatefulWidget {
  const SkyscraperListPage({Key key, @required this.skyscrapers})
      : super(key: key);
  final List<Skyscraper> skyscrapers;

  @override
  State<StatefulWidget> createState() {
    return _SkyscraperListPage();
  }
}

class _SkyscraperListPage extends State<SkyscraperListPage> {
  @override
  Widget build(BuildContext context) {
    print(this.widget.skyscrapers);
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(6),
        itemCount: this.widget.skyscrapers.length,
        itemBuilder: (BuildContext context, int index) {
          return SkyscraperRow(
            skyscraper: this.widget.skyscrapers[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Skyscraper',
        onPressed: () {
          Navigator.push(context, route)
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
