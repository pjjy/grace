import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class LogicalreasoningReview extends StatefulWidget {
  final int index;
  LogicalreasoningReview({required this.index});
  @override
  _LogicalreasoningReviewState createState() => _LogicalreasoningReviewState();
}

class _LogicalreasoningReviewState extends State<LogicalreasoningReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Abstract Reasoning");
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
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Abstract Reasoning Test #${index + 1}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to CollegeQuestReview page when the button is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Questreview(
                                questionNumber: index,
                                index: random.nextInt(10))),
                      );
                    },
                    child: const Text('view'),
                  ),
                ],
              ),
              tileColor: Colors.orange[100 * (index % 9 + 1)],
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
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols. \n';
    } else if (widget.index == 1) {
      mainText =
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols. \n';
    } else if (widget.index == 2) {
      mainText =
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols. \n';
    } else if (widget.index == 3) {
      mainText =
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols. \n';
    } else if (widget.index == 4) {
      mainText =
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols.\n';
    } else if (widget.index == 5) {
      mainText =
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols.\n';
    } else if (widget.index == 6) {
      mainText =
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols.\n';
    } else if (widget.index == 7) {
      mainText =
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols.\n';
    } else if (widget.index == 8) {
      mainText =
          '${widget.questionNumber + 1}. Analyze the replacement of shaped symbols.\n';
    } else if (widget.index == 9) {
      mainText =
          '${widget.index + 1}. Analyze the replacement of shaped symbols.\n';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              ' Abstract Reasoning Test',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/book 1.png',
              height: 50, // Specify the height of the image
              width: 35, // Specify the width of the image
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.index == 0 || widget.index == 0) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 1.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 1 || widget.index == 1) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 2.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 2 || widget.index == 2) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 3.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 3 || widget.index == 3) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 4.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 4 || widget.index == 4) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 5.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 5 || widget.index == 5) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 6.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 6 || widget.index == 6) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 7.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 7 || widget.index == 7) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 8.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 8 || widget.index == 8) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 9.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 9 || widget.index == 9) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 450,
                    child: Image.asset('assets/A 10.png'),
                  ),
                ),
              ),
            ],
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
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showAdditionalText = !showAdditionalText;
                });
              },
              child: Text(
                  showAdditionalText ? 'Hide explanation' : 'Show explanation'),
            ),
            if (showAdditionalText && widget.index == 0)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From top to bottom, the line rotates 45 \'  counterclockwise each time. This pattern continues onto the next column.\n\n'
                    'Rule 2: The total number of edges on the shapes in each box is equal to ten.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 1)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From left to right, the total number of crossed rectangles increases by one each time. This pattern continues onto the next row.\n\n'
                    'Rule 2: From right to left, the total number of rectangles increases by three each time. This pattern continues onto the next column.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 2)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From left to right, the crossed square moves two places counterclockwise each time. This pattern continues onto the next row.\n\n'
                    'Rule 2: From left to right, the shading in the central rectangle alternates between the left and right hand side. This pattern continues onto the next row.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 3)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From left to right, the arrow moves one place counterclockwise around the box. This pattern continues onto the next row.\n\n'
                    'Rule 2: The shaded square location is indicated by the arrow in the corner.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 4)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From left to right, the circle behind the line moves one place clockwise each time. This pattern continues onto the next row.\n\n'
                    'Rule 2: From top to bottom, the shaded circle moves one place counterclockwise each time. This pattern continues onto the next column.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 5)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From left to right, a new circle is added each time. This pattern continues onto the next row.\n\n'
                    'Rule 2: The total number of connected circles increases by one for each new row.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 6)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From left to right, the dotted line alternates between horizontal and vertical. This pattern continues onto the next row.\n\n'
                    'Rule 2: The symbols and shading are always symmetrical about the dotted line.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 7)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From left to right, the square with the missing edge moves one place counterclockwise around the box each time. This pattern continues onto the next row.\n\n'
                    'Rule 2: The side of the square with the missing edge is indicated by the arrow in the centre of each box.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 8)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: Each box contains ten shapes.\n\n'
                    'Rule 2: From left to right, the total number of shaded shapes in each box alternates between three and four. This pattern continues onto the next row.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 9)
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Rule 1: From top to bottom, each shape moves one place to the right each time. This pattern continues onto the next column.\n\n'
                    'Rule 2: From left to right, the shaded shape alternates between the left and right hand shape. This pattern continues onto the next row.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
                                index: random.nextInt(10))),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 220, 216, 216),
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  child: const Text('Back', style: TextStyle(fontSize: 16)),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (widget.index <= 9) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Questreview(
                                questionNumber: widget.index,
                                index: random.nextInt(10))),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 220, 216, 216),
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                  child: const Text('Next', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
