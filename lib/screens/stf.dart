import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Stf extends StatefulWidget {
  const Stf({super.key});

  @override
  State<Stf> createState() => _StfState();
}

class _StfState extends State<Stf> {
  @override
  Widget build(BuildContext context) {
    int counter = 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Apps'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            counter.toString(),
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (counter != 1) {
                      setState(() {
                        counter--;
                      });
                    }
                    if (kDebugMode) {
                      print(counter);
                    }
                  },
                  child: const Icon(Icons.remove)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    if (kDebugMode) {
                      print(counter);
                    }
                  },
                  child: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}
