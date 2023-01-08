import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/Components/textcomponent.dart';
import 'package:provider/provider.dart';

import '../Provider/state_data.dart';

class Widget2 extends StatelessWidget {
  const Widget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.red,
      child: Column(
        children: const [
          TextComponent(title: 'Widget 2', weight: FontWeight.bold),
          WidgetA(),
        ],
      ),
    );
  }
}

class WidgetA extends StatelessWidget {
  const WidgetA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: const [
          TextComponent(title: 'Widget A', weight: FontWeight.bold),
          WidgetB(),
        ],
      ),
    );
  }
}

class WidgetB extends StatelessWidget {
  const WidgetB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const TextComponent(title: 'Widget B', weight: FontWeight.bold),
          const TextComponent(
              title: 'Metin Yazınız :', weight: FontWeight.normal),
          TextField(
            maxLines: 2,
            onChanged: (input) {
              context.read<StateData>().newText(input);
            },
          )
        ],
      ),
    );
  }
}
