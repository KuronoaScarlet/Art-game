// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sketchit/screens/main_screen.dart';

import 'game_screen.dart';

class FinishScreen extends StatefulWidget {
  int time;
  FinishScreen({Key? key, required this.time}) : super(key: key);

  @override
  _FinishScreenState createState() => _FinishScreenState();
}

class _FinishScreenState extends State<FinishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "⌛Time has finished!⌛",
                style: TextStyle(fontSize: 35),
              ),
              const Text(
                "♥Hope you enjoyed it!♥",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GameScreen(time: widget.time),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.restart_alt,
                      size: 70,
                    ),
                    iconSize: 70,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MainScreen(time: widget.time),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 70,
                    ),
                    iconSize: 70,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
