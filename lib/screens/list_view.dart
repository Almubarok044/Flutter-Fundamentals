import 'package:flutter/material.dart';

class ViewList extends StatelessWidget {
  const ViewList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> myColor = [
      Colors.brown,
      Colors.pink,
      Colors.cyanAccent,
      Colors.limeAccent
    ];

    // List<Widget> myText = List.generate(
    //     100,
    //     (index) => Text(
    //           '${index + 1}',
    //           style: const TextStyle(fontSize: 70),
    //           textAlign: TextAlign.center,
    //         ));

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        centerTitle: true,
      ),
      // body: ListView(
      //   children: myText,
      // ));
      body: ListView.separated(
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.black),
        // mengelompokkan sejumlah item dan menampilkan nya dan bisa di scrolling
        // scrollDirection:
        //     Axis.horizontal, // merubah scrolling dari vertical ke horizontal
        itemCount: myColor.length,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            width: 300,
            color: myColor[index],
          );
        },
      ),
    );
  }
}
