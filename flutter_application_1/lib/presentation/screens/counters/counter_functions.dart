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
            title: const Center(child: Text('Counter Function')),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    initialCounter = 0;
                  });
                },
                icon: const Icon(Icons.restart_alt_sharp),
              )
            ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                initialCounter < 0 ? '0' : '$initialCounter',
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              onPressed: () {
                setState(() {
                  initialCounter += 1;
                });
              },
              icon: Icons.plus_one,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                setState(() {
                  initialCounter < 0 ? '0' : initialCounter -= 1;
                });
              },
              icon: Icons.exposure_minus_1_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
