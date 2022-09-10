import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BuildContextExt on BuildContext {
  // StackRouter get router => AutoRouter.of(this);

  T bloc<T extends Bloc>() => BlocProvider.of<T>(this);
}
