// ignore_for_file: deprecated_member_use, must_be_immutable

import 'dart:math';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:sketchit/screens/finish_screen.dart';
import 'package:sketchit/screens/main_screen.dart';

class GameScreen extends StatefulWidget {
  int time;
  GameScreen({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    CountDownController _controller = CountDownController();
    List<dynamic> emojis = [
      "🎈",
      "🧨",
      "✨",
      "🎉",
      "🎊",
      "🎃",
      "🎄",
      "🎍",
      "🎏",
      "🎐",
      "🎑",
      "🧧",
      "🎀",
      "🎁",
      "🎗️",
      "🎞️",
      "🎫",
      "🎪",
      "🎭",
      "🖼️",
      "🎨",
      "🧵",
      "🧶",
      "🥇",
      "🎖️",
      "🏆",
      "🎮",
      "🧩",
      "🪄",
      "🔮",
      "🎲",
      "♣️",
      "♠️",
      "♥️",
      "♦️",
      "🎵",
      "🎤",
      "🎧",
      "🔨",
      "⛏️",
      "🗝️",
      "🧬",
      "🔭",
      "⚖️",
      "💿",
      "🖥️",
      "🔋",
      "🗿",
      "🍕",
      "🍔",
      "🍟",
      "🌭",
      "🍿",
      "🥐",
      "🥨",
      "🍖",
      "🍗",
      "🍘",
      "🍥",
      "🍣",
      "🍩",
      "🍪",
      "🧁",
      "🍺",
      "🍾",
      "☕",
      "🍽️",
      "🍉",
      "🍊",
      "🍋",
      "🍌",
      "🍍",
      "🥭",
      "🍎",
      "🍐",
      "🍑",
      "🍄",
      "🥒",
      "🌹",
      "🌺",
      "🌻",
      "🌷",
      "🥀",
      "☘️",
      "🌳",
      "🍁",
      "🍃",
      "🍂",
      "🍀",
      "🛹",
      "✈️",
      "🚀",
      "🛸",
      "⚓",
      "🌎",
      "🪐",
      "🏔️",
      "🌧️",
      "🌤️",
      "🌩️",
      "🌕",
      "🌑",
      "🌖",
      "🌒",
      "🌓",
      "🌔",
      "🌗",
      "☀️",
      "🌜",
      "🌛",
      "🌠",
      "🌈",
      "⚡",
      "❄️",
      "🔥",
      "💧",
      "💞",
      "💕",
      "💔",
      "💫",
      "💦",
      "💤",
      "⛔",
      "🆘",
      "☢️",
      "☣️",
      "💯",
      "🐸",
      "🐹",
      "🦊",
      "🦝",
      "🐰",
      "🐻",
      "🐮",
      "🐷",
      "🐨",
      "🐗",
      "🐭",
      "🐼",
      "🐲",
      "🐔",
      "🦄",
      "🐴",
      "🐶",
      "🐺",
      "🐱",
      "🦁",
      "🐯",
      "👾",
      "👽",
      "👻",
      "💩",
      "🤖",
      "☠️",
      "👺",
    ];
    Random random = Random();
    int i = random.nextInt(emojis.length);
    int j = random.nextInt(emojis.length);
    int k = random.nextInt(emojis.length);
    while (i == k || i == j || j == k) {
      if (i == k) i = random.nextInt(emojis.length);
      if (i == j) j = random.nextInt(emojis.length);
      if (j == k) k = random.nextInt(emojis.length);
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    "Draw as fast as you can!",
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Something funny or creative related to this Emoji!",
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "${emojis[i]}${emojis[j]}${emojis[k]}",
                    style: const TextStyle(fontSize: 80),
                  ),
                  CircularCountDownTimer(
                    duration: widget.time,
                    initialDuration: 0,
                    controller: _controller,
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    ringColor: Colors.white,
                    ringGradient: null,
                    fillColor: Colors.black,
                    fillGradient: null,
                    backgroundColor: Colors.white,
                    backgroundGradient: null,
                    strokeWidth: 20.0,
                    strokeCap: StrokeCap.round,
                    textStyle: const TextStyle(
                        fontSize: 33.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textFormat: CountdownTextFormat.S,
                    isReverse: false,
                    isReverseAnimation: false,
                    isTimerTextShown: true,
                    autoStart: true,
                  ),
                  TextButton(
                    onPressed: () {
                      if (int.parse(_controller.getTime()) == widget.time) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                FinishScreen(time: widget.time),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Finish!",
                      style: TextStyle(fontSize: 60),
                    ),
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
