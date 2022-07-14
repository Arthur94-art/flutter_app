import 'package:flutter/material.dart';

class ArchiveListPage extends StatelessWidget {
  const ArchiveListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[400],
          title: Text('Archived')),
    );
  }
}
