import 'package:flutter/material.dart';

import '../Components/widget1.dart';
import '../Components/widget2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Learn"),
        centerTitle: true,
      ),
      body: Row(
        children: const [
          Expanded(
            child: Widget1(),
          ),
          Expanded(
            child: Widget2(),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
