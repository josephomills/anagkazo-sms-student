import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyFellowshipCardWidget extends StatelessWidget {
  const MyFellowshipCardWidget({
    Key? key,
    required this.stat,
    required this.label,
    this.width = 135,
    this.height = 120,
    this.color = Colors.blue,
    this.isLoading = false,
    this.onTap,
  }) : super(key: key);

  final String stat;
  final double width;
  final double height;
  final String label;
  final Color color;
  final bool isLoading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isLoading
                  ? SpinKitThreeBounce(size: 24, color: color)
                  : Text(
                      stat,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: color,
                          ),
                    ),
              Text(
                label,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
