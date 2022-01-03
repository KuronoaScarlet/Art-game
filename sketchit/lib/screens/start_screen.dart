import 'package:flutter/material.dart';
import 'package:sketchit/screens/main_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    int defaultTime = 60;
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      body: Center(
        child: GestureDetector(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.image,
                size: 250,
              ),
              Text(
                "Tap to Start!",
                style: TextStyle(fontSize: 45),
              ),
            ],
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MainScreen(
                  time: defaultTime,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
