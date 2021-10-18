import 'package:cookbook_ch_06_copy/plan_provider.dart';
import 'package:cookbook_ch_06_copy/views/plan_creator_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(PlanProvider(child: MasterPlanApp()));

class MasterPlanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PlanCreatorScreen(),
    );
  }
}
