import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

@module
abstract class FormKeyModule {
  @injectable
  GlobalKey<FormState> get formKey => GlobalKey<FormState>();
}

@module
abstract class AuthModule {
  @preResolve
  @singleton
  Future<ParseUser> currentUser() async =>
      await ParseUser.currentUser() as Future<ParseUser>;
}
