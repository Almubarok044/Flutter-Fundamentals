// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_dasar/mapping_list.dart';
import 'package:flutter_dasar/screens/extract_widget.dart';
import 'package:flutter_dasar/screens/image_widget.dart';
import 'package:flutter_dasar/screens/list_tile.dart';
import 'package:flutter_dasar/screens/list_view.dart';
import 'package:flutter_dasar/screens/stf.dart';
import 'package:flutter_dasar/screens/text_widget.dart';
import 'package:flutter_dasar/screens/visible_invisible.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //state management
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //untuk menghilangkan watermark debug
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const TextWidget());
        // home: const VisibleInvisible());
        // home: const ViewList());
        // home: const TileList());
        // home: const ImageWidget());
        // home: const ExtractWidget());
        // home: const Stf());
        home: const MappingList());
  }
}
