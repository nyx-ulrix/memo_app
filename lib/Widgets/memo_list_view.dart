import 'package:flutter/material.dart';
import 'package:memo_app/Widgets/memo_types.dart';

class MemoListView extends StatelessWidget {
  const MemoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 100,
            color: const Color.fromARGB(64, 113, 73, 19),
          ),
        ),
        const BaseTemplate(
          memoColour: Color.fromARGB(10, 113, 73, 19),
        ),
        const BaseTemplate(
          memoColour: Color.fromARGB(10, 113, 73, 19),
        ),
      ],
    );
  }
}
