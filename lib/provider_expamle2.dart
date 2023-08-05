import 'package:firstapp_131/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderExpamle2 extends StatelessWidget {
  const ProviderExpamle2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false)
                  .incrementCount();
            },
            child: Icon(
              Icons.add,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false)
                  .decrementCount();
            },
            child: Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Container(
        child: Center(
            child: Text(
          "${Provider.of<CounterProvider>(context).getCountValue()}",
          style: TextStyle(fontSize: 50),
        )),
      ),
    );
  }
}
