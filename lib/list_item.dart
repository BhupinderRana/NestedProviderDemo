import 'package:flutter/material.dart';
import 'package:my_provider_demo/person_model.dart';
import 'package:provider/provider.dart';

class ListItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final person = Provider.of<PersonModel>(context);
    person.getTime();
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0,5),
            blurRadius: 10
          )
        ]
      ),
      child: Column(
        children: [
          Text(person.name),
          Text(person.email),
          Switch(value: person.status, onChanged:(value)=>{
            person.personStatus()
          }),
          Text(person.currentTime)
        ],
      ),
    );

  }
}