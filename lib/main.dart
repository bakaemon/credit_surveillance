import 'package:app/pages/base/app.dart';
import 'package:flutter/material.dart';
import 'config/injection.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
