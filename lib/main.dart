import 'package:flutter/material.dart';

import 'package:quizapp/views/selection_Screen/selection_screen.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectionScreen(),
    );
  }
}

void main() {
  runApp(Myapp());
}
