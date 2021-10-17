import 'package:cookbook_ch_06_copy/models/data_layer.dart';
import 'package:cookbook_ch_06_copy/plan_provider.dart';
import 'package:cookbook_ch_06_copy/views/plan_creator_screen.dart';
import 'package:cookbook_ch_06_copy/views/plan_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        home: PlanCreatorScreen(),
      ),
    );
  }
}
