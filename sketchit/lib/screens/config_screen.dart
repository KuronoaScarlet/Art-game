// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ConfigScreen extends StatefulWidget {
  int time;
  ConfigScreen({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  _ConfigScreenState createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  late TextEditingController controller2;

  @override
  void initState() {
    super.initState();
    controller2 = TextEditingController(text: "${widget.time}");
  }

  @override
  void dispose() {
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int defaultTime = 60;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              const Text(
                "Configuration",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              // Time number changer
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Time in seconds that players have to draw:",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              TextField(
                controller: controller2,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OutlinedButton(
                      child: const Text("Reset"),
                      onPressed: () {
                        controller2.text = defaultTime.toString();
                      },
                    ),
                  ],
                ),
              ),
              // Save Button
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                child: const Text("Save Changes"),
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pop(
                      int.parse(controller2.text),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
