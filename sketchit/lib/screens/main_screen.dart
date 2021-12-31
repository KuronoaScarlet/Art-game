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
    double size2 = 75;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                    fontSize: 20,
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
                    fontSize: 20,
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
