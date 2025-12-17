import 'package:flutter/material.dart';

class DrawerWidgetScreen extends StatefulWidget {
  const DrawerWidgetScreen({super.key});

  @override
  State<DrawerWidgetScreen> createState() => _DrawerWidgetScreenState();
}

class _DrawerWidgetScreenState extends State<DrawerWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DrawerScreen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.prod.website-files.com/5ec7dad2e6f6295a9e2a23dd/66fcde00cf54d71747a52bac_upwork-profile-photo-tips.jpg',
                ),
              ),
              accountName: Text(
                'Jhon Walker',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('abc@gmail.com'),
            ),
            ListTile(leading: Icon(Icons.folder), title: Text('My Files')),
            ListTile(leading: Icon(Icons.group), title: Text('Shared with me')),
            ListTile(leading: Icon(Icons.star), title: Text('Starred')),
            ListTile(leading: Icon(Icons.delete), title: Text('Trash')),
            ListTile(leading: Icon(Icons.upload), title: Text('Uploads')),
            Divider(),
            ListTile(leading: Icon(Icons.share), title: Text('Share')),
            ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
          ],
        ),
      ),
    );
  }
}
