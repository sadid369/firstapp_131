import 'package:firstapp_131/counter_provider.dart';
import 'package:firstapp_131/provider_expamle2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderExpample extends StatelessWidget {
  const ProviderExpample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                // Provider.of<CounterProvider>(context, listen: false)
                //     .incrementCount();
                context.read<CounterProvider>().incrementCount();
              },
              child: Icon(
                Icons.add,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                // Provider.of<CounterProvider>(context, listen: false)
                //     .decrementCount();
                context.read<CounterProvider>().decrementCount();
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
        body: Column(
          children: [
            Container(
              child: Center(
                child: Consumer<CounterProvider>(
                  builder: (context, value, child) {
                    print('Consumer');
                    return Text(
                      // "${context.watch<CounterProvider>().getCountValue()}",
                      "${value.getCountValue()}",
                      style: const TextStyle(fontSize: 50),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProviderExpamle2()));
              },
              child: Text('Next Page'),
            )
          ],
        ));
  }
}
