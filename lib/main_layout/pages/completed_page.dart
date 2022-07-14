import 'package:flutter/material.dart';

class CompletedListPage extends StatelessWidget {
  const CompletedListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
          title: Text('Completed list')),
    );
  }
}
