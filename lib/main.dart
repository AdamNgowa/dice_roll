import 'package:dice_roller/widgets/dice_container.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dice Roller App',
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Center(
          child: DiceContainer(
            Colors.blue.shade400,
            Colors.blue.shade600,
          ),
        ),
      ),
    );
  }
}
