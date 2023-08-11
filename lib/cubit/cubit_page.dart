import 'package:firstapp_131/cubit/counter_cubit.dart';
import 'package:firstapp_131/cubit/counter_state.dart';
import 'package:firstapp_131/cubit/second_cubit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitPage extends StatelessWidget {
  const CubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // BlocProvider.of<CounterCubit>(context).incrementCount();
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return SecondCubitPage();
            },
          ));
        },
        child: Icon(Icons.arrow_forward),
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
