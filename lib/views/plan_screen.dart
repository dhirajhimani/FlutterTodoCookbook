import 'package:cookbook_ch_06_copy/models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;

  const PlanScreen({Key? key, required this.plan}) : super(key: key);

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Master Plan')),
      body: Column(
        children: [
          Expanded(child: _buildList(widget.plan)),
          SafeArea(child: Text(widget.plan.completenessMessage)),
        ],
      ),
      floatingActionButton: _buildAddTaskButton(widget.plan),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Widget _buildAddTaskButton(Plan plan) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan.tasks.add(Task());
        });
      },
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index]),
    );
  }

  Widget _buildTaskTile(Task task) {
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            setState(() {
              task.complete = selected ?? false;
            });
          }),
      title: TextFormField(
        initialValue: task.description,
        onFieldSubmitted: (text) {
          setState(
            () {
              task.description = text;
            },
          );
        },
      ),
    );
  }
}
