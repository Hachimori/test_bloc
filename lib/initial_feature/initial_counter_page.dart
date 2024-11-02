

import 'package:flutter/material.dart';

class InitialCounterPage extends StatelessWidget {
  const InitialCounterPage._(this.title);

  final String title;

  static Route<void> route({String title = "Hello title"}) {
    return MaterialPageRoute<void>(
      builder: (_) => InitialCounterPage._(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _MyHomePage(title: title);
  }
}

class _MyHomePage extends StatefulWidget {
  const _MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<_MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
