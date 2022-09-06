import 'package:flutter/material.dart';

@immutable
abstract class Failure {
  const Failure({required this.msg});

  final String msg;

  String get message => msg;
}
