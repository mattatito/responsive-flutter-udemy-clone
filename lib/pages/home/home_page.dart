
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: constraints.maxWidth >= 800? Colors.red : Colors.black,
        ),
      );
    });
  }
}
