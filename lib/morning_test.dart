import 'package:flutter/material.dart';

class MorningTest extends StatefulWidget {
  const MorningTest({Key? key}) : super(key: key);

  @override
  _MorningTestState createState() => _MorningTestState();
}

class _MorningTestState extends State<MorningTest> {
  double sleepHours = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Утренний блок'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Количество сна в часах'),
              Slider(
                value: sleepHours,
                min: 0,
                max: 10,
                divisions: 10,
                label: sleepHours.toInt().toString(),
                onChanged: (double value) {
                  setState(() {
                    sleepHours = value;
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
