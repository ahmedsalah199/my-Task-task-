import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Create Task'),
      ),
    );
  }
}
