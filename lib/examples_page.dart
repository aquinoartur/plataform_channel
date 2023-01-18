import 'package:flutter/material.dart';
import 'package:plataform_channel/examples/hello_word_example.dart';

class ExamplesPage extends StatelessWidget {
  const ExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plataform Channel Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                navigateTo(
                  context,
                  const HelloWorldExample(),
                );
              },
              child: const Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }

  void navigateTo(
    BuildContext context,
    Widget page,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }
}
