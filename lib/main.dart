import 'package:flutter/material.dart';
import 'package:flutter_app/main_layout/pages/home_page.dart';
import 'package:flutter_app/main_layout/provider/model.dart';
import 'package:provider/provider.dart';

import 'main_layout/pages/archive_list_page.dart';
import 'main_layout/pages/completed_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        theme: ThemeData(backgroundColor: Colors.lightGreen),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          'archive_list': (context) => ArchiveListPage(),
          'completed_list': (context) => CompletedListPage()
        },
      ),
    ),
  );
}
