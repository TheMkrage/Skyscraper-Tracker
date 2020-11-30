import 'package:SkyscraperTracker/model/skyscraper.dart';
import 'package:flutter/material.dart';

class NewSkyscraperPage extends StatelessWidget {
  NewSkyscraperPage({Key key, @required this.onNewSkyscraperSubmit})
      : super(key: key);
  final void Function(Skyscraper) onNewSkyscraperSubmit;

  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Skyscraper"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Skyscraper Name'),
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  onNewSkyscraperSubmit(Skyscraper(name: _controller.text));
                  Navigator.pop(context);
                },
              )
            ],
          ),
          key: _formKey,
        ),
      ),
    );
  }
}
