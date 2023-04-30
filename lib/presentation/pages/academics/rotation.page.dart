import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:student/infrastructure/academics/models/rotation.object.dart';
import 'package:student/presentation/widgets/cards/stat_card.widget.dart';

@RoutePage()
class RotationPage extends StatelessWidget {
  const RotationPage({Key? key, required this.rotation}) : super(key: key);

  final RotationObject rotation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          rotation.name!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          const Text("Junior Clerkship"),
          Divider(
            thickness: 1,
            color: Theme.of(context).colorScheme.outline,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MCQ: /35",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Orals: /35",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Assignment: /30",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StatCardWidget(stat: "75", label: "Total Score"),
                  StatCardWidget(stat: "100", label: "Points"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Text("Senior Clerkship"),
          Divider(
            thickness: 1,
            color: Theme.of(context).colorScheme.outline,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MCQ: /35",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Orals: /35",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Assignment: /30",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StatCardWidget(stat: "67", label: "Total Score"),
                  StatCardWidget(stat: "100", label: "Points"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
