import 'package:flutter/material.dart';
import 'package:my_provider_demo/person_model.dart';
import 'package:my_provider_demo/person_provider.dart';
import 'package:provider/provider.dart';

import 'list_item.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final productsData = Provider.of<PersonProvider>(context);
    final listItems = productsData.list;
    print('first');
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, i) =>
            ChangeNotifierProvider<PersonModel>.value(
              value: listItems[i],
          child: ListItem(),
        ),
        itemCount: listItems.length,
      ),
    );
  }
}
