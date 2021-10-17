import 'package:cookbook_ch_06_copy/models/plan.dart';
import 'package:flutter/material.dart';

class PlanProvider extends InheritedWidget {
  final _plans = <Plan>[];

  PlanProvider({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static List<Plan> of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<PlanProvider>()!;
    if (provider._plans.isEmpty) {
      //debugDumpApp();
      print('first time');
      final plan = Plan()..name = 'Plan 1';
      provider._plans.add(plan);
      final plan2 = Plan()..name = 'Plan 2';
      provider._plans.add(plan2);
    }
    return provider._plans;
  }
}
