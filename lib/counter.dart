import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  plus() {
    counter++;
    setState(() {});
  }

  minus() {
    counter--;
    setState(() {});
  }

  update() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter', style: const TextStyle(fontSize: 100)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: minus,
              child: const Text(
                '-',
                style: TextStyle(fontSize: 50),
              ), //SizedBox
            ),
            const SizedBox(width: 25),
            ElevatedButton(
              onPressed: update,
              child: const Text(
                'Update',
                style: TextStyle(fontSize: 50),
              ), //SizedBox
            ),
            const SizedBox(width: 25),
            ElevatedButton(
              onPressed: plus,
              child: const Text(
                '+',
                style: TextStyle(fontSize: 50),
              ), //SizedBox
            ),
          ],
        ),
      ],
    );
  }
}
