import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BuildContextExt on BuildContext {
  T bloc<T extends Bloc>() => BlocProvider.of<T>(this);
}
