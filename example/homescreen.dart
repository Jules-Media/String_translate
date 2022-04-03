library string_translate;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart';

/// Homescreen Widget for the Example App
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

/// State for teh Homesceen.
/// This shows a AppBar and a Text in the Center
/// of the Body
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
