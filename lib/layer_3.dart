import 'dart:math';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Layer3 extends StatefulWidget {
  final String title;

  const Layer3({Key? key, required this.title}) : super(key: key);

  @override
  State<Layer3> createState() => _Layer3State();
}

class _Layer3State extends State<Layer3> {
  var data = Random().nextInt(50) + 49;

  @override
  Widget build(BuildContext context) {
    // const title = 'SATHY';

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF050505),
          title: Text(
            widget.title.toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text("GARBAGE".toUpperCase(),
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700)),
            ),
            data > 80
                ? Text("REACHED MAX".toUpperCase(),
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700))
                : const Text(""),
            Expanded(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(140.0, 5.0, 140.0, 5.0),
                child: LiquidLinearProgressIndicator(
                  value: data / 100, // Defaults to 0.5.
                  valueColor: const AlwaysStoppedAnimation(
                    Color(0xFFF5B5BA),
                  ), // Defaults to the current Theme's accentColor.
                  backgroundColor: Colors
                      .white, // Defaults to the current Theme's backgroundColor.
                  borderColor: Colors.white,
                  borderWidth: 5.0,
                  borderRadius: 20.0,
                  direction: Axis
                      .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                  center: Text(data.toString() + "%",
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700)),
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(36.0, 36.0, 36.0, 36.0),
              child: Card(
                  color: const Color(0xFFE9EBF7),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                        width: 35,
                      ),
                      Text("  Methane-65%  ".toUpperCase(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      Text("  carbon dioxide-55%  ".toUpperCase(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(
                        height: 30,
                        width: 35,
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}
