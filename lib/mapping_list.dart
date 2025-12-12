// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MappingList extends StatelessWidget {
  const MappingList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        'Name': 'Kaibutsu',
        'Age': '20',
        'Hobbies': [
          'Football',
          'Swimming',
          'Calisthenics',
          'Watching',
          'Otomotif',
          'Gaming'
        ]
      },
      {
        'Name': 'Cobra',
        'Age': '35',
        'Hobbies': ['Fighting', 'Bikers', 'Reading']
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ID Apps'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.tealAccent,
      ),
      body: ListView(
        children: myList.map((data) {
          print(data['Hobbies']);
          List myhobbies = data['Hobbies'];
          print(myhobbies);
          return Card(
            margin: const EdgeInsets.all(20),
            color: Colors.yellow.withOpacity(0),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    const CircleAvatar(),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${data['Name']}'),
                        Text('Age: ${data['Age']}')
                      ],
                    ),
                  ]),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myhobbies.map((hobbies) {
                        return Container(
                          color: Colors.tealAccent,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 8),
                          padding: const EdgeInsets.all(10),
                          child: Text(hobbies),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
