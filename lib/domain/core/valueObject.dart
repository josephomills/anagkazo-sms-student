import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:student/domain/core/failures/failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<Failure, T> get value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
