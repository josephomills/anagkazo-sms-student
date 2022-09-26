import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:student/application/core/injectable.core.dart';
import 'package:student/application/core/router.core.gr.dart';
import 'package:student/domain/auth/auth.facade.dart';
import 'package:student/presentation/core/pageIndex.dart';

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
    return Builder(builder: (context) {
      final tabsRouter = AutoTabsRouter.of(context);

      return Drawer(
        child: ListView(
          shrinkWrap: true,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                name,
                style: const TextStyle(fontSize: 24),
              ),
              accountEmail: Text(username),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey[300],
                backgroundImage: CachedNetworkImageProvider(photoUrl),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/drawer-bg.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7),
                    BlendMode.darken,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Dashboard"),
              onTap: () {
                navigateTo(
                  context: context,
                  tabsRouter: tabsRouter,
                  index: PageIndex.dashboard,
                );
              },
              selected: tabsRouter.activeIndex == PageIndex.dashboard,
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text("Academics"),
              onTap: () {
                navigateTo(
                  context: context,
                  tabsRouter: tabsRouter,
                  index: PageIndex.academics,
                );
              },
              selected: tabsRouter.activeIndex == PageIndex.academics,
            ),
            ListTile(
              leading: const Icon(Icons.my_library_books),
              title: const Text("Documents"),
              onTap: () {
                navigateTo(
                  context: context,
                  tabsRouter: tabsRouter,
                  index: PageIndex.documents,
                );
              },
              selected: tabsRouter.activeIndex == PageIndex.documents,
            ),
            ListTile(
              leading: const Icon(Icons.qr_code),
              title: const Text("Attendance"),
              onTap: () {
                navigateTo(
                  context: context,
                  tabsRouter: tabsRouter,
                  index: PageIndex.attendance,
                );
              },
              selected: tabsRouter.activeIndex == PageIndex.attendance,
            ),
            ListTile(
              leading: const Icon(Icons.receipt),
              title: const Text("Forms"),
              onTap: () {
                navigateTo(
                  context: context,
                  tabsRouter: tabsRouter,
                  index: PageIndex.forms,
                );
              },
              selected: tabsRouter.activeIndex == PageIndex.forms,
            ),
            ListTile(
              leading: const Icon(Icons.people_alt),
              title: const Text("My Fellowship"),
              onTap: () {
                navigateTo(
                  context: context,
                  tabsRouter: tabsRouter,
                  index: PageIndex.myFellowship,
                );
                // Fetch service data
                // getIt<MyFellowshipBloc>()
                //     .add(const MyFellowshipEvent.getMyFellowshipServices());
              },
              selected: tabsRouter.activeIndex == PageIndex.myFellowship,
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text("Pastoral Points"),
              onTap: () {
                navigateTo(
                  context: context,
                  tabsRouter: tabsRouter,
                  index: PageIndex.pastoralPoints,
                );
              },
              selected: tabsRouter.activeIndex == PageIndex.pastoralPoints,
            ),
            ListTile(
              leading: const Icon(Icons.gavel),
              title: const Text("Disciplinary Points"),
              onTap: () {
                navigateTo(
                  context: context,
                  tabsRouter: tabsRouter,
                  index: PageIndex.disciplinaryPoints,
                );
              },
              selected: tabsRouter.activeIndex == PageIndex.disciplinaryPoints,
            ),
            const SizedBox(height: 16),
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
      );
    });
  }

  navigateTo({
    required BuildContext context,
    required TabsRouter tabsRouter,
    required int index,
  }) {
    // close drawer
    context.router.pop();

    if (tabsRouter.activeIndex != index) {
      tabsRouter.setActiveIndex(index);
    }
  }
}
