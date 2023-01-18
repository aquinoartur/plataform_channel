import 'package:flutter/material.dart';
import 'package:plataform_channel/examples/hello_world_channel.dart';

class HelloWorldExample extends StatefulWidget {
  const HelloWorldExample({super.key});

  @override
  State<HelloWorldExample> createState() => _HelloWorldExampleState();
}

class _HelloWorldExampleState extends State<HelloWorldExample> {
  ValueNotifier<String> result = ValueNotifier('');
  final channelController = HelloWorldChannel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World Example'),
        backgroundColor: Colors.green,
      ),
      body: AnimatedBuilder(
          animation: result,
          builder: (context, _) {
            return Center(
              child: Text(result.value),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          result.value = await channelController.getHelloWorld();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
