import 'package:flutter/material.dart';

class BaseTemplate extends StatefulWidget {
  const BaseTemplate({super.key});

  @override
  State<BaseTemplate> createState() => _BaseTemplateState();
}

class _BaseTemplateState extends State<BaseTemplate> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const SizedBox(
        width: 1000,
        height: 500,
        child: Text('test data'),
      ),
    );
  }
}
