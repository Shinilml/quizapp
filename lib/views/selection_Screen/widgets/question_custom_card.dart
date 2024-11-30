import 'package:flutter/material.dart';

class QuestionCustomCard extends StatelessWidget {
  final String image;
  final String caterory;
  final String questions;

  const QuestionCustomCard({
    super.key,
    required this.image,
    required this.caterory,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              caterory,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              questions,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    ));
  }
}
