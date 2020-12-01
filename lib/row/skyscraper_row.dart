import 'package:SkyscraperTracker/model/skyscraper.dart';
import 'package:flutter/material.dart';

class SkyscraperRow extends StatelessWidget {
  SkyscraperRow({@required this.skyscraper});
  final Skyscraper skyscraper;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(this.skyscraper.name,
            style: TextStyle(fontFamily: "HelveticaNeue", fontSize: 64.0)),
      ),
    );
  }
}
