import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/Page/homepage.dart';
import 'package:flutter_provider_learn/Provider/state_data.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<StateData>(
      child: const MyApp(),
      create: (BuildContext context) => StateData(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Provier Learn',
      home: HomePage(),
    );
  }
}
