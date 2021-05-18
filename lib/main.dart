import 'package:flutter/material.dart';
import 'package:my_provider_demo/person_provider.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => PersonProvider(),
        child: MyHomePage(),
      ),
    );
  }
}
