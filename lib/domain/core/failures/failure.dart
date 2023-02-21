import 'package:flutter/material.dart';

@immutable
abstract class Failure {
  const Failure({required this.message});

  final String message;

  // String get message => this.message;
}
