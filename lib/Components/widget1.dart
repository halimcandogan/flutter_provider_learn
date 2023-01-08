import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/Components/textcomponent.dart';
import 'package:provider/provider.dart';

import '../Provider/state_data.dart';

class Widget1 extends StatelessWidget {
  const Widget1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.blue,
      child: Column(
        children: [
          const TextComponent(title: "Widget 1", weight: FontWeight.bold),
          const TextComponent(
              title: "Yazdığınız Metin :", weight: FontWeight.normal),
          TextComponent(
              title: context.watch<StateData>().yazi, weight: FontWeight.normal)
        ],
      ),
    );
  }
}
