import 'package:flutter/material.dart';

class CounterFunction extends StatefulWidget {
  const CounterFunction({super.key});

  @override
  State<CounterFunction> createState() => _CounterFunctionState();
}

class _CounterFunctionState extends State<CounterFunction> {
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
              Text(
                initialCounter == 1 ? "Click" : "Clicks",
                style: const TextStyle(fontSize: 50),
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
