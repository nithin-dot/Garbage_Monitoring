import 'package:flutter/material.dart';

import 'layer_3.dart';

class Layer2 extends StatelessWidget {
  const Layer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'SATHY';

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF050505),
          title: const Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            padding: const EdgeInsets.all(40.0),
            children: List.generate(choices.length, (index) {
              return Center(
                child: SelectCard(choice: choices[index]),
              );
            })));
  }
}

class Choice {
  const Choice({required this.title});
  final String title;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Arasur'),
  Choice(title: 'Bannari Amman sugar'),
  Choice(title: 'Ariyappampalayam'),
  Choice(title: 'Gandhi Nagar'),
  Choice(title: 'periyakodiveri'),
  Choice(title: 'kodiveri'),
  Choice(title: 'Alathucombai'),
  Choice(title: 'ondiyur'),
  Choice(title: 'bhavanisagar'),
  Choice(title: 'sadumugai'),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    // var data = true;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Layer3(title: choice.title),
          ),
        );
      },
      child: Card(
          color: const Color(0xFFE9EBF7),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              choice.title.toUpperCase(),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ))),
    );
  }
}
