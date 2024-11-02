import 'package:flutter/material.dart';

class BlocCubitCounterPage extends StatelessWidget {
  const BlocCubitCounterPage._();

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const BlocCubitCounterPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Cubit Counter Page'),
      ),
      body: const Center(
        child: Text('Bloc Cubit Counter Page'),
      ),
    );
  }
}