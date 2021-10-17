import 'package:cookbook_ch_06_copy/models/plan.dart';
import 'package:flutter/material.dart';

class PlanProvider extends InheritedWidget {
  final _plan = Plan();

  PlanProvider({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static Plan of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return provider!._plan;
  }
}
