import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/presentation/navigation/router.core.gr.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        primary: false,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          MoreTileWidget(
            icon: LineAwesomeIcons.user,
            title: "Profile",
            onTap: () => context.router.push(const ProfileRoute()),
          ),
          const SizedBox(height: 32),
          MoreTileWidget(
            icon: LineAwesomeIcons.user,
            title: "Discipline",
            onTap: () => context.router.push(const DisciplineRoute()),
          ),
          MoreTileWidget(
            icon: LineAwesomeIcons.alternate_file,
            title: "Forms",
            onTap: () => context.router.push(const FormsRoute()),
          ),
          MoreTileWidget(
            icon: LineAwesomeIcons.folder_open,
            title: "Documents",
            onTap: () => context.router.push(const DocumentsRoute()),
          ),
          MoreTileWidget(
            icon: LineAwesomeIcons.user,
            title: "Accommodation",
            onTap: () => context.router.push(const AccommodationRoute()),
          ),
          const MoreTileWidget(
            icon: LineAwesomeIcons.user,
            title: "Character Development",
          ),
          const SizedBox(height: 32),
          MoreTileWidget(
            icon: LineAwesomeIcons.cog,
            title: "Settings",
            onTap: () => context.router.push(const SettingsRoute()),
          ),
          MoreTileWidget(
            icon: LineAwesomeIcons.user,
            title: "Logout",
            color: Theme.of(context).colorScheme.error,
          ),
        ],
      ),
    );
  }
}

class MoreTileWidget extends StatelessWidget {
  const MoreTileWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
    this.color,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      tileColor: Theme.of(context).colorScheme.background,
      title: Text(title, style: TextStyle(color: color)),
      trailing: Icon(LineAwesomeIcons.angle_right, color: color),
      onTap: onTap,
    );
  }
}
