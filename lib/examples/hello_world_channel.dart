import 'package:flutter/services.dart';

class HelloWorldChannel {
  final channel =
      const MethodChannel("plataform_channel/hello_world");

  Future<String> getHelloWorld() async {
    try {
      return await channel.invokeMethod("getHelloWorld");
    } on PlatformException {
      return "Failed to get Hello World";
    }
  }
}
