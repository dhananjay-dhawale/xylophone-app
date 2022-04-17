import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

void playsound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey(
    {Color color = Colors.red, required int soundNumber, String text = "Sa"}) {
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(primary: color),
      onPressed: () {
        playsound(soundNumber);
      },
      child: Text(text),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, text: 'Sa'),
              buildKey(color: Colors.orange, soundNumber: 2, text: 'Re'),
              buildKey(color: Colors.yellow, soundNumber: 3, text: 'Ga'),
              buildKey(color: Colors.green, soundNumber: 4, text: 'Ma'),
              buildKey(color: Colors.teal, soundNumber: 5, text: 'Pa'),
              buildKey(color: Colors.blue, soundNumber: 6, text: 'Dha'),
              buildKey(color: Colors.purple, soundNumber: 7, text: 'Ni'),
            ],
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

void playsound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    playsound(1);
                  },
                  child: const Text('Sa'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    playsound(2);
                  },
                  child: const Text('Re'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.yellow),
                  onPressed: () {
                    playsound(3);
                  },
                  child: const Text('Ga'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    playsound(4);
                  },
                  child: const Text('Ma'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  onPressed: () {
                    playsound(5);
                  },
                  child: const Text('Pa'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {
                    playsound(6);
                  },
                  child: const Text('Dha'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                  onPressed: () {
                    playsound(7);
                  },
                  child: const Text('Ni'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/