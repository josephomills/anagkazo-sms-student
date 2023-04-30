import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:student/presentation/navigation/autoroute.gr.dart';
import 'package:student/presentation/widgets/logout.widget.dart';
import 'package:student/presentation/widgets/more_tile.widget.dart';

@RoutePage()
class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32),
        primary: false,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          MoreTileWidget(
            icon: LineAwesomeIcons.user,
            title: "Profile",
            onTap: () => context.router.push(ProfileRoute()),
          ),
          const SizedBox(height: 32),
          MoreTileWidget(
            icon: LineAwesomeIcons.gavel,
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
            icon: LineAwesomeIcons.city,
            title: "Accommodation",
            onTap: () => context.router.push(const AccommodationRoute()),
          ),
          const MoreTileWidget(
            icon: LineAwesomeIcons.user_cog,
            title: "Character Development",
          ),
          const SizedBox(height: 32),
          MoreTileWidget(
            icon: LineAwesomeIcons.cog,
            title: "Settings",
            onTap: () => context.router.push(const SettingsRoute()),
          ),
          MoreTileWidget(
            icon: LineAwesomeIcons.alternate_sign_out,
            title: "Logout",
            color: Theme.of(context).colorScheme.error,
            onTap: () => showModalBottomSheet(
              context: context,
              builder: (context) => const LogoutWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
