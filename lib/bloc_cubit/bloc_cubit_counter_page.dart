import 'package:flutter/material.dart';
import 'package:flutter_application_hachimori/bloc_cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCubitCounterPage extends StatelessWidget {
  const BlocCubitCounterPage._();

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const BlocCubitCounterPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child:  BlocBuilder<CounterCubit, int>(
        builder: (context, count) => _Page(count)
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page(this.count);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Cubit Counter Page'),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => _Body(count),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () => context.read<CounterCubit>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () => context.read<CounterCubit>().decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body(this.count);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$count',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
