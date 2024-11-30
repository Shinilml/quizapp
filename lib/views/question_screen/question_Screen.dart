import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:async';

import 'package:quizapp/dummy_db.dart';
import 'package:quizapp/utils/animation_cinstants.dart';
import 'package:quizapp/views/result_Screen/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  final String category;
  const QuestionScreen({super.key, required this.category});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  dynamic count = 0;
  double progress = 0.0;
  int? selectedanswerindex;
  int rightAnswerCount = 0;
  List questionList = [];
  dynamic currentindex = 0;
  var categorylist = [];
  Timer? timer;
  int timeLeft = 10;

  @override
  void initState() {
    super.initState();
    Category();
    startTimer();
  }

  void Category() {
    switch (widget.category) {
      case "Sports":
        questionList = DummyDb.sportslist;
        break;
      case "Science":
        questionList = DummyDb.scienceList;
        break;
      case "History":
        questionList = DummyDb.historyList;
        break;
      case "Geography":
        questionList = DummyDb.geographyList;
        break;
      case "Math":
        questionList = DummyDb.mathematicsList;
        break;
      case "Cars":
        questionList = DummyDb.carsList;
        break;
      default:
        questionList = [];
        break;
    }
  }

  void startTimer() {
    timer?.cancel();
    timeLeft = 15;

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          timer.cancel();
          goToNextQuestion();
        }
      });
    });
  }

  void goToNextQuestion() {
    if (count < questionList.length - 1) {
      setState(() {
        count++;
        selectedanswerindex = null;
        startTimer();
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            RightansCount: rightAnswerCount,
          ),
        ),
      );
    }
  }

  void updateProgress() {
    setState(() {
      progress = rightAnswerCount / questionList.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: LinearPercentIndicator(
          lineHeight: 20,
          percent: (count + 1) / questionList.length,
          center: Text(""),
          backgroundColor: Colors.grey[300],
          progressColor: Colors.blue,
          barRadius: Radius.circular(10),
          animation: true,
        ),
        actions: [
          Text(
            "${count + 1} / ${questionList.length}",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Text(
                      "$timeLeft",
                      style: TextStyle(fontSize: 40, color: Colors.amber),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.black,
                            child: Text(
                              "$timeLeft",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 170,
                        ),
                        Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            questionList[count]["questions"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 151, 122, 122),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  if (selectedanswerindex == questionList[count]["answerIndex"])
                    Lottie.asset(AnimationsConstants.RightAnsAnimation,
                        width: 1000, height: 1000)
                  else if (selectedanswerindex != null)
                    if (selectedanswerindex !=
                        questionList[count]["answerIndex"])
                      Center(
                        child: Lottie.asset(
                            AnimationsConstants.WrongAnsAnimation,
                            width: 450,
                            height: 300),
                      ),
                ],
              ),
            ),
            Column(
                children: List.generate(
              questionList[count]["options"].length,
              (index) => Padding(
                padding: const EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: () {
                    if (selectedanswerindex == null) {
                      setState(() {
                        selectedanswerindex = index;

                        if (index == questionList[count]["answerIndex"]) {
                          rightAnswerCount++;
                        }
                      });
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: getcolor(index), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          questionList[count]["options"][index],
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        Icon(
                          Icons.circle_outlined,
                          color: const Color.fromARGB(255, 151, 122, 122),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
            SizedBox(
              height: 20,
            ),
            if (selectedanswerindex != null)
              InkWell(
                onTap: () {
                  setState(() {});

                  selectedanswerindex = null;
                  if (count < questionList.length - 1) {
                    count++;
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(
                            RightansCount: rightAnswerCount,
                          ),
                        ));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  Color getcolor(int optionIndex) {
    if (selectedanswerindex != null &&
        optionIndex == questionList[count]["answerIndex"]) {
      return Colors.green;
    }

    if (selectedanswerindex == optionIndex) {
      if (selectedanswerindex == questionList[count]["answerIndex"]) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return Color.fromARGB(255, 151, 122, 122);
    }
  }
}
