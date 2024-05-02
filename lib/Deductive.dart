import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class DeductiveReview extends StatefulWidget {
  final int index;

  DeductiveReview({required this.index});

  @override
  _DeductiveReviewState createState() => _DeductiveReviewState();
}

class _DeductiveReviewState extends State<DeductiveReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Deductive");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/applogo 2.png',
              height: 70, // Specify the height of the image
              width: 60.50, // Specify the width of the image
            ),
            const SizedBox(
                width: 10), // Add some space between the image and text
            const Text(
              'CQUERE',
              style: TextStyle(fontWeight: FontWeight.bold), // Make text bold
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      ' Deductive Reasoning Test #${index + 1}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to Questreview page when the button is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Questreview(
                                questionNumber: index,
                                index: random.nextInt(15))),
                      );
                    },
                    child: const Text('view'),
                  ),
                ],
              ),
              tileColor: Colors.blueGrey[100 * (index % 9 + 1)],
            );
          },
        ),
      ),
    );
  }
}

class Questreview extends StatefulWidget {
  final int index;
  final int questionNumber;
  Questreview({required this.index, required this.questionNumber});
  @override
  _QuestreviewState createState() => _QuestreviewState();
}

class _QuestreviewState extends State<Questreview> {
  bool showAdditionalText = false;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    String mainText = '';
    if (widget.index == 0) {
      mainText =
          '${widget.questionNumber + 1}. If all freshmen are required to take either Calculus or Statistics, and Maria is a freshman who is not taking Calculus, which of the following must be true?\n\n'
          'A. Maria is taking Statistics.\n'
          'B.   Maria is not a freshman.\n'
          'C.           Maria is taking both \nCalculus and Statistics.\n'
          'D.      Maria\'s class schedule \nconflicts with Calculus.\n';
    } else if (widget.index == 1) {
      mainText =
          '${widget.questionNumber + 1}. If all students who take Chemistry are also required to take Biology, and John is not taking Biology, which of the following must be true?\n\n'
          'A.      John is not taking \nChemistry.\n'
          'B.               John is not a \nstudent.\n'
          'C.            John is taking \nChemistry.\n'
          'D.        John\'s schedule \nconflicts with Biology.\n';
    } else if (widget.index == 2) {
      mainText =
          '${widget.questionNumber + 1}. If all students in the Engineering program are required to take Physics, and Maria is not taking Physics, which of the following must be true?\n\n'
          'A.                 Maria is not in the \nEngineering program.\n'
          'B.          Maria is not a student.\n'
          'C.   Maria is in the Engineering program.\n'
          'D.                   Maria\'s schedule\n conflicts with Physics.\n';
    } else if (widget.index == 3) {
      mainText =
          '${widget.questionNumber + 1}. If all students who are proficient in English are required to take a literature course, and Juan is taking a literature course, which of the following must be true?\n\n'
          'A.         Juan is proficient in \nEnglish.\n'
          'B.    Juan is not proficient in English.\n'
          'C.  Juan is a literature major.\n'
          'D. Juan\'s schedule conflicts \nwith English.\n';
    } else if (widget.index == 4) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in Economics are required to take Microeconomics, and Maria is not taking Microeconomics, which of the following must be true?\n\n'
          'A.           Maria is not \na student.\n'
          'B. Maria is majoring \nin Economics.\n'
          'C.   Maria\'s schedule \nconflicts\n with Microeconomics.\n'
          'D.           Maria is not\n majoring in Economics.\n';
    } else if (widget.index == 5) {
      mainText =
          '${widget.questionNumber + 1}. If all students who are majoring in Computer Science must take Programming, and Juan is not taking Programming, which of the following must be true?\n\n'
          'A.      Juan is not majoring in Computer Science.\n'
          'B.           Juan is proficient in programming.\n'
          'C.  Juan\'s schedule conflicts\n with Programming.\n'
          'D.             Juan is majoring in \nComputer Science.\n';
    } else if (widget.index == 6) {
      mainText =
          '${widget.questionNumber + 1}. If all students who take Physics must also take Mathematics, and Maria is not taking Mathematics, which of the following must be true?\n\n'
          'A.     Maria is not a \nstudent.\n'
          'B.          Maria is not \ntaking Physics.\n'
          'C.  Maria\'s schedule \nconflicts with Mathematics.\n'
          'D.    Maria is taking \nPhysics.\n';
    } else if (widget.index == 7) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in Psychology must take a Statistics course, and John is not taking Statistics, which of the following must be true?\n\n'
          'A.              John is not \nmajoring in Psychology.\n'
          'B.    John is proficient\n in Statistics.\n'
          'C.       John\'s schedule\n conflicts with Statistics.\n'
          'D.     John is majoring \nin Psychology.\n';
    } else if (widget.index == 8) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in Chemistry must take a lab course, and Maria is not taking a lab course, which of the following must be true?\n\n'
          'A.         Maria is not majoring\n in Chemistry.\n'
          'B.               Maria is proficient \nin lab techniques.\n'
          'C. Maria\'s schedule conflicts \nwith the lab course.\n'
          'D.                Maria is majoring \nin Chemistry.\n';
    } else if (widget.index == 9) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in Business Administration must take Accounting, and Juan is not taking Accounting, which of the following must be true?\n\n'
          'A.    Juan is not majoring in Business Administration.\n'
          'B.           Juan is proficient in accounting.\n'
          'C.  Juan\'s schedule conflicts\n with Accounting.\n'
          'D.             Juan is majoring in \nBusiness Administration.\n';
    } else if (widget.index == 10) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in Literature must take a Creative Writing course, and Maria is not taking Creative Writing, which of the following must be true?\n\n'
          'A. Maria is not majoring\n in Literature.\n'
          'B.   Maria is proficient in\n creative writing.\n'
          'C.          Maria\'s schedule \nconflicts with Creative Writing.\n'
          'D.        Maria is majoring \nin Literature.\n';
    } else if (widget.index == 11) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in History must take a course on World War II, and John is not taking the World War II course, which of the following must be true?\n\n'
          'A.         John is not majoring in History.\n'
          'B.    John is proficient in World\n War II history.\n'
          'C.      John\'s schedule conflicts \nwith the World War II course.\n'
          'D.                John is majoring in History.\n';
    } else if (widget.index == 12) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in Environmental Science must take a course on Ecology, and Maria is not taking Ecology, which of the following must be true?\n\n'
          'A.  Maria is not majoring \nin Environmental Science.\n'
          'B.    Maria is proficient in\n ecology.\n'
          'C.           Maria\'s schedule \nconflicts with Ecology.\n'
          'D.      Maria is majoring in\n Environment Science.\n';
    } else if (widget.index == 13) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in Mathematics must take a course on Abstract Algebra, and Juan is not taking Abstract Algebra, which of the following must be true?\n\n'
          'A.    Juan is not majoring in Mathematics.\n'
          'B.          Juan is proficient in abstract algebra.\n'
          'C. Juan\'s schedule conflicts \nwith Abstract Algebra.\n'
          'D.           Juan is majoring in Mathematics.\n';
    } else if (widget.index == 14) {
      mainText =
          '${widget.questionNumber + 1}. If all students who major in Sociology must take a course on Social Research Methods, and Maria is not taking Social Research Methods, which of the following must be true?\n\n'
          'A.       Maria is not majoring \nin Sociology.\n'
          'B.          Maria is proficient in \nsocial research methods.\n'
          'C. Maria\'s schedule conflicts \nwith Social Research Methods.\n'
          'D.           Maria is majoring in Sociology.';
    } else {
      mainText = 'This is the ICT Test Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              ' Deductive Reasoning Test',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/book 4.png',
              height: 70, // Specify the height of the image
              width: 55, // Specify the width of the image
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  mainText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 23.0),
                ),
              ),
            ),
            if (widget.index == 0 ||
                widget.index == 1 ||
                widget.index == 2 ||
                widget.index == 3 ||
                widget.index == 4 ||
                widget.index == 5 ||
                widget.index == 6 ||
                widget.index == 7 ||
                widget.index == 8 ||
                widget.index == 9 ||
                widget.index == 10 ||
                widget.index == 11 ||
                widget.index == 12 ||
                widget.index == 13 ||
                widget.index == 14) ...[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAdditionalText = !showAdditionalText;
                  });
                },
                child: Text(showAdditionalText ? 'Hide Answer' : 'Show Answer'),
              ),
              if (showAdditionalText && widget.index == 0)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Maria is taking Statistics.\n\n Explanation: Since Maria is not taking Calculus and freshmen are required to take either Calculus or Statistics, Maria must be taking Statistics.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 1)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. John is not taking Chemistry.\n\nExplanation: Since all students who take Chemistry are required to take Biology, and John is not taking Biology, it must be true that John is not taking Chemistry.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 2)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Maria is not in the Engineering program.\n\nExplanation: Since all students in the Engineering program are required to take Physics, and Maria is not taking Physics, it must be true that Maria is not in the Engineering program.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 3)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Juan is proficient in English.\n\nExplanation: Since all students who are proficient in English are required to take a literature course, and Juan is taking a literature course, it must be true that Juan is proficient in English.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 4)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. Maria is not majoring in Economics.\n\nExplanation: Since all students who major in Economics are required to take Microeconomics, and Maria is not taking Microeconomics, it must be true that Maria is not majoring in Economics.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 5)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Juan is not majoring in Computer Science.\n\nExplanation: Since all students who are majoring in Computer Science must take Programming, and Juan is not taking Programming, it must be true that Juan is not majoring in Computer Science.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 6)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'B. Maria is not taking Physics.\n\nExplanation: Since all students who take Physics must also take Mathematics, and Maria is not taking Mathematics, it must be true that Maria is not taking Physics.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 7)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. John is not majoring in Psychology.\n\nExplanation: Since all students who major in Psychology must take a Statistics course, and John is not taking Statistics, it must be true that John is not majoring in Psychology.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 8)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. Maria is majoring in Chemistry.\n\nExplanation: Since all students who major in Chemistry must take a lab course, and Maria is not taking a lab course, it must be true that Maria is majoring in Chemistry.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 9)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Juan is not majoring in Business Administration.\n\nExplanation: Since all students who major in Business Administration must take Accounting, and Juan is not taking Accounting, it must be true that Juan is not majoring in Business Administration.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 10)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Maria is not majoring in Literature.\n\nExplanation: Since all students who major in Literature must take a Creative Writing course, and Maria is not taking Creative Writing, it must be true that Maria is not majoring in Literature.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 11)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. John is not majoring in History.\n\nExplanation: Since all students who major in History must take a course on World War II, and John is not taking the World War II course, it must be true that John is not majoring in History.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 12)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Maria is not majoring in Environmental Science.\n\nExplanation: Since all students who major in Environmental Science must take a course on Ecology, and Maria is not taking Ecology, it must be true that Maria is not majoring in Environmental Science.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 13)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Juan is not majoring in Mathematics.\n\nExplanation: Since all students who major in Mathematics must take a course on Abstract Algebra, and Juan is not taking Abstract Algebra, it must be true that Juan is not majoring in Mathematics.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 14)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. Maria is not majoring in Sociology.\n\nExplanation: Since all students who major in Sociology must take a course on Social Research Methods, and Maria is not taking Social Research Methods, it must be true that Maria is not majoring in Sociology.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (widget.index > 0) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Questreview(
                                  questionNumber: widget.index,
                                  index: random.nextInt(15))),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 220, 216, 216), // Change background color
                      textStyle: const TextStyle(
                          color: Colors.white), // Change text color
                    ),
                    child: const Text('Back', style: TextStyle(fontSize: 16)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (widget.index <= 14) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Questreview(
                                  questionNumber: widget.index,
                                  index: random.nextInt(15))),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 220, 216, 216), // Change background color
                      textStyle: const TextStyle(
                          color: Colors.white), // Change text color
                    ),
                    child: const Text('Next', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
