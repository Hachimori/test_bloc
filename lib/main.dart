import 'package:flutter/material.dart';
import 'package:flutter_application_hachimori/bloc_cubit/bloc_cubit_counter_page.dart';
import 'package:flutter_application_hachimori/initial_feature/initial_counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const InitialPage(),
    );
  }
}

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Initial Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push<void>(InitialCounterPage.route());
              },
              child: const Text('Open Counter Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push<void>(BlocCubitCounterPage.route());
              },
              child: const Text('Open Bloc Cubit Counter Page'),
            ),
          ],
        )
      ),
    );
  }
}

