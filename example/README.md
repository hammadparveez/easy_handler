# Example Easy Handler

```dart
import 'package:flutter/material.dart';
import 'package:easy_handler/easy_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = '';

  @override
  void initState() {
    super.initState();
    afterBuild((() {
      setState(() {
        text = "Hammad Parveez";
      });
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: ElevatedButton(
          onPressed: () {},
          child: const Text("Tap me"),
          style: ButtonStyle(
            backgroundColor: setProp(Colors.purple),
            foregroundColor: setProp(Colors.white),
            elevation: setProp(10),
            padding: setProp(
              EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text('Easy Handler'),
        ),
        body: Center(child: Text("After layout: $text")),
      ),
    );
  }
}



```
