import 'package:flutter/material.dart';
import 'package:quizapp/dummy_db.dart';
import 'package:quizapp/views/question_screen/question_Screen.dart';
import 'package:quizapp/views/selection_Screen/widgets/question_custom_card.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Hi John",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text("Lets make this day productive")
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 5,
          ),
          SizedBox(
            width: 7,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Let's play",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 13,
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: DummyDb.selectionlist.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionScreen(
                          category: DummyDb.selectionlist[index]["category"],
                        ),
                      ));
                },
                child: QuestionCustomCard(
                  image: DummyDb.selectionlist[index]["image"],
                  caterory: DummyDb.selectionlist[index]["category"],
                  questions: DummyDb.selectionlist[index]["number of question"],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
