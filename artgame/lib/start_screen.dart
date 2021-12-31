import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: const [
          // Imagen Sketch It

          // Text: Press to Start
        ],
      ),
      onTap: () {},
    );
  }
}
