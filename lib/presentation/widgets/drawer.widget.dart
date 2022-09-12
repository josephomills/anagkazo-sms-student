import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:student/domain/auth/auth.facade.dart';

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
      child: SingleChildScrollView(
        // shrinkWrap: true,
        // physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(name),
                  accountEmail: Text(username),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(photoUrl),
                  ),
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
                  title: Text("Pastoral Points"),
                ),
                const ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Disciplinary Points"),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  label: const Text("Settings"),
                ),
                TextButton.icon(
                  onPressed: () async {
                    (await getIt<AuthFacade>().logout()).fold(
                        (f) =>
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                              f.maybeMap(
                                serverError: (e) => e.message!,
                                userDoesNotExist: (e) =>
                                    "Error: User does not exist.",
                                orElse: () =>
                                    "Something went wrong. Please try again.",
                              ),
                            ))), (r) {
                      context.router.replaceAll([const DashboardRoute()]);
                    });
                  },
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  label: const Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
