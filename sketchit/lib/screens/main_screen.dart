import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {},
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
                  onPressed: () {},
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
