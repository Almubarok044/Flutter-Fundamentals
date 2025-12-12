import 'package:flutter/material.dart';

class TileList extends StatelessWidget {
  const TileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        elevation: 1,
      ),
      body: ListView(
        children: const [
          ListTile(
            // contentPadding: EdgeInsets.all(5),
            title: Text('Mohamad Almubarok'),
            subtitle: Text(
              'Kisamara Onoreee Chikuso Fuzakenna temeera Buttobasu yo',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            leading: (Icon(
              Icons.person_3_rounded,
              color: Colors.purpleAccent,
            )),
            trailing: Text('09:00 PM'),
            dense: true,
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            // contentPadding: EdgeInsets.all(5),
            title: Text('Kurosaki Ichigo'),
            subtitle: Text(
              'Bankai Mugetsu Getsugatensho',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            leading: (Icon(
              Icons.person_3_rounded,
              color: Colors.yellowAccent,
            )),
            trailing: Text('08:00 AM'),
            dense: true,
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            // contentPadding: EdgeInsets.all(5),
            title: Text('Naruto Uzumaki'),
            subtitle: Text(
              'Dattebayo Rasengan Mode sanin Baryon',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            leading: (Icon(
              Icons.person_3_rounded,
              color: Colors.redAccent,
            )),
            trailing: Text('11:00 PM'),
            dense: true,
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            // contentPadding: EdgeInsets.all(5),
            title: Text('Monkey D Luffy'),
            subtitle: Text(
              'Moshi Moshi! Ore wa Monkey D Luffy! Kaizoku ou ni naru otoko da!',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            leading: (Icon(
              Icons.person_3_rounded,
              color: Colors.brown,
            )),
            trailing: Text('03:00 AM'),
            dense: true,
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            // contentPadding: EdgeInsets.all(5),
            title: Text('Son Goku'),
            subtitle: Text(
              'Ultra Instinct KameKameKamehaaaaa!',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            leading: (Icon(
              Icons.person_3_rounded,
              color: Colors.blueGrey,
            )),
            trailing: Text('01:00 AM'),
            dense: true,
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
