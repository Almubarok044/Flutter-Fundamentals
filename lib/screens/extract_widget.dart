// ignore_for_file: unused_import

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:random_date/random_date.dart';

class ExtractWidget extends StatelessWidget {
  const ExtractWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    // String tdata = DateFormat("hh:mm a").format(DateTime.now());
    var randomDate = RandomDate.withRange(2000, 2005).toString();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Extract Widget'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black,
        ),
        itemCount: 30,
        itemBuilder: (context, index) {
          return ItemChat(
            imageUrl: 'https://picsum.photos/id/$index/200/300',
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
            trailing: randomDate,
          );
        },
      ),
      // children: [
      // ItemChat(
      //   imageUrl:
      //       'https://cdn.statically.io/img/1.bp.blogspot.com/-Pwk9ISGdSLU/XuYirtnk4jI/AAAAAAAABqc/jhR2e6bVGWcK_5YqTWEEVkt781NnZYPpwCK4BGAsYHg/d/kekuatan-ichigo-kurosaki-di-anime-bleach.jpg',
      //   title: 'Kurosaki Ichigo',
      //   subtitle: 'Bankai Mugetsu Getsugatensho',
      // ),
      // Divider(
      //   color: Colors.black,
      // ),
      // ItemChat(
      //   imageUrl:
      //       'https://w0.peakpx.com/wallpaper/254/297/HD-wallpaper-naruto-eyes-naruto-uzumaki-sage-mode-naruto-uzumaki-sage-mode-anime.jpg',
      //   title: 'Uzumaki Naruto',
      //   subtitle: 'Dattebayo Rasengan Mode sanin Baryon',
      // ),
      // Divider(
      //   color: Colors.black,
      // ),
      // ItemChat(
      //   imageUrl:
      //       'https://qph.cf2.quoracdn.net/main-qimg-21fb79fbd8a58b6d5f64defe81eff0ee-lq',
      //   title: 'Monkey D Luffy',
      //   subtitle:
      //       'Moshi Moshi! Ore wa Monkey D Luffy! Kaizoku ou ni naru otoko da!',
      // ),
      // Divider(
      //   color: Colors.black,
      // ),
      // ItemChat(
      //   imageUrl:
      //       'https://cdn.pixabay.com/photo/2023/02/17/15/17/goku-7796245_1280.png',
      //   title: 'Son Goku',
      //   subtitle: 'Ultra Instinct KameKameKamehaaaaa!',
      // ),
      // Divider(
      //   color: Colors.black,
      // ),
      // ItemChat(
      //   imageUrl:
      //       'https://i.pinimg.com/1200x/f5/7f/44/f57f44bb12aa4e8a0415fe37fdd8445b.jpg',
      //   title: 'Natsu Dragneel',
      //   subtitle: 'Multi Dragon Force',
      // ),
      // Divider(
      //   color: Colors.black,
      // ),
      // ],
      // ),
    );
  }
}

class ItemChat extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ItemChat(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle,
      required trailing});

  @override
  Widget build(BuildContext context) {
    // String tdata = DateFormat("hh:mm a").format(DateTime.now());
    var randomDate = RandomDate.withRange(2000, 2005).toString();

    return ListTile(
      // contentPadding: EdgeInsets.all(5),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(randomDate),
      // isThreeLine: true,
      dense: true,
    );
  }
}
