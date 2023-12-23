

import 'package:flutter/cupertino.dart';

class SimplePage extends StatelessWidget {

  final String text;

  const SimplePage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,textAlign: TextAlign.center),
    );
  }
}