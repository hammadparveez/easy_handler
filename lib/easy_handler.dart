import 'package:flutter/material.dart';

/// Calling setProp(value) is equal to MaterialStateProperty.all(value)
MaterialStateProperty<T> setProp<T>(T value) =>
    MaterialStateProperty.all<T>(value);

/// afterBuild(cb) is called right after your build(context). once your layout has been rendered
void afterBuild(VoidCallback callback) {
  WidgetsBinding.instance?.addPostFrameCallback((timeStamp) => callback());
}
