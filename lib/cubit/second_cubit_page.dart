import 'package:firstapp_131/cubit/counter_cubit.dart';
import 'package:firstapp_131/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondCubitPage extends StatelessWidget {
  const SecondCubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).incrementCount();
            },
            child: Text('Add'),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().decrementCount();
            },
            child: Text('Dec'),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Counter Cubit'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text(state.count.toString()),
          );
        },
      ),
    );
  }
}
