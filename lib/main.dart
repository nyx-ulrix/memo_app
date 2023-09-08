import 'package:flutter/material.dart';
import 'package:memo_app/memo_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M E M 0',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 248, 236, 216),
          primarySwatch: Colors.brown),
      home: const ListView(),
    );
  }
}

class ListView extends StatelessWidget {
  const ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mem0'),
        titleTextStyle:
            const TextStyle(color: Color.fromARGB(255, 248, 236, 216)),
        elevation: 0,
      ),
      body: const MemoListView(),
    );
  }
}
