import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FormKeyModule {
  @injectable
  GlobalKey<FormState> get formKey => GlobalKey<FormState>();
}
