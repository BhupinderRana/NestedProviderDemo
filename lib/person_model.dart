import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PersonModel extends ChangeNotifier {
  String name;
  String email;
  bool status;
  String currentTime='good';

  PersonModel({this.name, this.email, this.status});

  void personStatus() {
    status = !status;
    notifyListeners();
  }

  getTime() {
    Timer _timer = new Timer.periodic(Duration(seconds: 1), (Timer timer) {
      DateTime now = DateTime.now().add(Duration(hours: status?0:1));
      currentTime = DateFormat('hh:mm:ss').format(now);
      notifyListeners();
    });
  }
}
