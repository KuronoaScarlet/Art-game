// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sketchit/screens/config_screen.dart';
import 'package:sketchit/screens/game_screen.dart';

class MainScreen extends StatefulWidget {
  int time;
  MainScreen({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // Local Variables
    double size1 = 200;
    double size2 = 50;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "🖌️Sketch It!❤️",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                IconButton(
                  iconSize: size1,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => GameScreen(
                          time: widget.time,
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.star,
                    size: size1,
                  ),
                ),
                const Text(
                  "GAME",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  iconSize: size2,
                  onPressed: () {
                    Navigator.of(context)
                        .push(
                      MaterialPageRoute(
                        builder: (context) => ConfigScreen(
                          time: widget.time,
                        ),
                      ),
                    )
                        .then((value) {
                      setState(() {
                        widget.time = value;
                      });
                    });
                  },
                  icon: Icon(
                    Icons.settings,
                    size: size2,
                  ),
                ),
                const Text(
                  "Configuration",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
