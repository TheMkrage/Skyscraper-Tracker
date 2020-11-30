import 'package:flutter/material.dart';

class NewSkyscraperPage extends StatelessWidget {
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
                  print(_formKey);
                  print(_formKey.currentState);
                  print(_controller.text);
                  print(_controller.value);
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
