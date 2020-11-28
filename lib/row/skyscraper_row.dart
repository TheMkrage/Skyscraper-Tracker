import 'package:SkyscraperTracker/model/skyscraper.dart';
import 'package:flutter/material.dart';

class SkyscraperRow extends StatelessWidget {
  SkyscraperRow({@required this.skyscraper});
  final Skyscraper skyscraper;

  @override
  Widget build(BuildContext context) {
    return Card(child: Text(this.skyscraper.name));
  }
}
