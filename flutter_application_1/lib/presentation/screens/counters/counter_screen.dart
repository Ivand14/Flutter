import 'package:flutter/material.dart';

class CounterScrenn extends StatefulWidget {
  const CounterScrenn({super.key});

  @override
  State<CounterScrenn> createState() => _CounterScrennState();
}

class _CounterScrennState extends State<CounterScrenn> {
  int initialCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counter Screen')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$initialCounter',
                style:
                    const TextStyle(fontSize: 90, fontWeight: FontWeight.w200),
              ),
              const Text(
                'Clicks',
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              initialCounter += 1;
            });
          },
          child: const Icon(Icons.plus_one),
        ),
      ),
    );
  }
}
