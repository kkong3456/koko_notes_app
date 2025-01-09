import 'package:flutter/material.dart';
import 'package:koko_notes_app/components/drawer_tile.dart';
import 'package:koko_notes_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //header
          DrawerHeader(
            child: Icon(Icons.note),
          ),
          const SizedBox(height: 25),
          //note tile
          DrawerTile(
            title: 'Notes',
            leading: Icon(Icons.home),
            onTap: () => Navigator.of(context).pop(),
          ),

          //settings tile
          DrawerTile(
            title: 'Settings',
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
