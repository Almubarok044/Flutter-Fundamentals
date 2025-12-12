import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold widget utama
      appBar: AppBar(
        //appbar seperti navbar pada web
        title: const Text('vvibu'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Yokosoanfakhabakbpoah,nckoaru9q7-5y55-9ksafbuabfksajfaiyraiohnfklasnfiahfiabambauhcaoiufq0rurhknkbuiyw470955y1hbj fhbkalbfaf aj ihfaakbkaheuakbkrieyfgkab.',
          // maxLines: 2, memaksimalkan text pada line yg ditentukan
          // overflow: TextOverflow.ellipsis, menambahkan titik untuk menandai text ini masih berlanjut
          textAlign: TextAlign.right, //rata kanan
          style: TextStyle(
              backgroundColor: Colors.black,
              color: Colors.yellow,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 5, //mengatur jarak antar huruf
              decorationStyle: TextDecorationStyle.solid,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
              decorationThickness: 2 //ketebalan 2
              ),
        ),
      ),
    );
  }
}
