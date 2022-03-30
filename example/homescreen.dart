library translations;

import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example".tr()),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
        child: Text("This is a Text".tr()),
      ),
    );
  }
}
