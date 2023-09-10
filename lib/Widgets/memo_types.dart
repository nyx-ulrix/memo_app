import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class BaseTemplate extends StatelessWidget {
  const BaseTemplate({super.key, required this.memoColour});

  final memoColour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Slidable(
        startActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {
                //function here
              }),
              backgroundColor: Colors.black,
              icon: Icons.done,
            ),
            SlidableAction(
              onPressed: ((context) {
                //function here
              }),
              backgroundColor: Colors.white60,
              icon: Icons.edit,
            )
          ],
        ),

        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {
                //function here
              }),
              backgroundColor: Colors.redAccent,
              icon: Icons.delete,
            ),
          ],
        ),

        //endActionPane:

        child: Container(
          height: 100,
          color: memoColour,
          child: const Center(
            child: Text('Lorém Ipsúm'),
          ),
        ),
      ),
    );
  }
}
