import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.menu),
        ),
      ),
    );
  }
}
