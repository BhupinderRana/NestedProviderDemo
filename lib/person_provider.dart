import 'package:flutter/cupertino.dart';
import 'package:my_provider_demo/person_model.dart';

class PersonProvider extends ChangeNotifier {
  List<PersonModel> _model = [
    PersonModel(name: 'Bhupinder Singh', email: 'bhupinder1920@gmail.com', status: true),
    PersonModel(name: 'Happy Singh', email: 'happy@gmail.com', status: false),
    PersonModel(name: 'Gurbhej Singh', email: 'gurbhej@gmail.com', status: true),
    PersonModel(name: 'Lakshit Singh', email: 'lakshit@gmail.com', status: false),
    PersonModel(name: 'Amrit  Mann', email: 'amrit@gmail.com', status: true),
  ];
  List<PersonModel> get list => _model;

}
