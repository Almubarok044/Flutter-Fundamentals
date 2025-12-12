import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 350,
          color: Colors.tealAccent,
          child: Image.asset(
            'assets/seira.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
