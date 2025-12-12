import 'package:flutter/material.dart';

class VisibleInvisible extends StatelessWidget {
  const VisibleInvisible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 2'),
      ),
      // body: Center(
      //   child: Stack(
      //     alignment: Alignment.center,
      //     children: [
      //       Container(
      //         width: 400,
      //         height: 400,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: 300,
      //         height: 300,
      //         color: Colors.yellow,
      //       ),
      //       Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.deepPurple,
      //       ),
      //       Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.greenAccent,
      //       )
      //     ],
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 200,
            height: 50,
            color: Colors.blueAccent,
          ),
          Container(
            width: 70,
            height: 50,
            color: Colors.black45,
          ),
          Container(
            width: 500,
            height: 50,
            color: Colors.deepPurple,
          ),
          Container(
            width: 150,
            height: 50,
            color: Colors.greenAccent,
          )
        ],
      ),
    );
  }
}
