import 'package:flutter/material.dart';

import 'layer_2.dart';
import 'layer_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'GOBI MUNICIPALITY';

    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/third': (context) => const Layer3(
              title: title,
            ),
        '/second': (context) => const Layer2(),
      },
      title: title,
      home: Scaffold(
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
              }))),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.booln});
  final String title;
  final bool booln;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Sathy', booln: true),
  Choice(title: 'puliampatti', booln: false),
  Choice(title: 'kurumandur', booln: false),
  Choice(title: 'athani', booln: false),
  Choice(title: 'pariyur', booln: false),
  Choice(title: 'Appakudal', booln: false),
  Choice(title: 'kugalur', booln: false),
  Choice(title: 'bhavani', booln: false),
  Choice(title: 'kolappalur', booln: false),
  Choice(title: 'vakanpatt', booln: false),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    // var data = true;
    return choice.booln
        ? InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Card(
                color: const Color(0xFFE9EBF7),
                child: Center(
                    child: Text(
                  choice.title.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                ))),
          )
        : Card(
            color: const Color(0xFFE9EBF7),
            child: Center(
                child: Text(
              choice.title.toUpperCase(),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700),
            )));
  }
}
