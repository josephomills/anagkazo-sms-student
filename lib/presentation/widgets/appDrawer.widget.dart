import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
    required this.photoUrl,
    required this.name,
    required this.username,
  }) : super(key: key);

  final String photoUrl;
  final String name;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(name),
            accountEmail: Text(username),
            currentAccountPicture: CachedNetworkImage(imageUrl: photoUrl),
          ),
          const ListTile(
            leading: Icon(Icons.add),
            title: Text("Dashboard"),
          ),
          const ListTile(
            leading: Icon(Icons.add),
            title: Text("Academics"),
          ),
          const ListTile(
            leading: Icon(Icons.add),
            title: Text("Documents"),
          ),
          const ListTile(
            leading: Icon(Icons.add),
            title: Text("Forms"),
          ),
          const ListTile(
            leading: Icon(Icons.add),
            title: Text("My Fellowship"),
          ),
          const ListTile(
            leading: Icon(Icons.add),
            title: Text("Disciplinary Points"),
          ),
        ],
      ),
    );
  }
}
