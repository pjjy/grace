import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class MathematicsReview extends StatefulWidget {
  final int index;

  MathematicsReview({required this.index});

  @override
  _MathematicsReviewState createState() => _MathematicsReviewState();
}

class _MathematicsReviewState extends State<MathematicsReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Mathematics");
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
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      ' General Mathematics Test #${index + 1}',
                      style: const TextStyle(
                        fontSize: 16,
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
                                index: random.nextInt(20))),
                      );
                    },
                    child: Text('view'),
                  ),
                ],
              ),
              tileColor: Colors.red[100 * (index % 9 + 1)],
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
      mainText = '\n${widget.questionNumber + 1}.  5.75=______\n\n'
          'A.   11/2 \n'
          'B.   17/3 \n'
          'C.   23/4 \n'
          'D.   29/5 \n';
    } else if (widget.index == 1) {
      mainText = '\n${widget.questionNumber + 1}.  -4[8-(5-2)]-3= _____\n\n'
          'A.  15\n'
          'B.  17\n'
          'C. -17\n'
          'D. -23\n';
    } else if (widget.index == 2) {
      mainText =
          '\n${widget.questionNumber + 1}.  Which of the following has the greatest vaue?\n\n'
          'A.     2/3     \n'
          'B.      5/8 \n'
          'C.      3/4\n'
          'D.  0.675\n';
    } else if (widget.index == 3) {
      mainText =
          '\n${widget.questionNumber + 1}.  If m/24 = 0.625, what is the numerical value of m?\n\n'
          'A. 12\n'
          'B. 13 \n'
          'C. 14\n'
          'D. 15\n';
    } else if (widget.index == 4) {
      mainText = '\n${widget.questionNumber + 1}.  What is 75% of 2/3? \n\n'
          'A.   2/3\n'
          'B.    3/4\n'
          'C.    1/2 \n'
          'D.    1/3\n';
    } else if (widget.index == 5) {
      mainText =
          '\n${widget.questionNumber + 1}.  If a and b are both odd numbers,then which of the following must be an odd number?\n\n'
          'A.        a + b \n'
          'B.      ab + 1  \n'
          'C.    2a + 4b\n'
          'D. a + b  + 3  \n';
    } else if (widget.index == 6) {
      mainText =
          '\n ${widget.questionNumber + 1}. If a jeepney ride costs P8.50 for the first four kilometers and P1.50 for each additional kilometer or fraction thereof,then how much would a passenger pay for a 12 km ride?"\n\n'
          'A.   P10.00\n'
          'B.   P18.00 \n'
          'C.   P18.50     \n'
          'D.   P20.50\n';
    } else if (widget.index == 7) {
      mainText = '\n${widget.questionNumber + 1}.  1,8,27,64,125,___?\n\n'
          'A.      175         \n'
          'B.      201     \n'
          'C.      216          \n'
          'D.      225\n';
    } else if (widget.index == 8) {
      mainText = '\n\n${widget.questionNumber + 1}.   (3x + 2)(4x-5)=____\n\n'
          'A.            12x^2 - 10x  \n'
          'B.       12x^2 + 10x -0\n'
          'C.       12x^2 - 7x - 10\n'
          'D.     12x^2 - 23x - 10\n';
    } else if (widget.index == 9) {
      mainText =
          '\n${widget.questionNumber + 1}. What is the area of a square inscribed in a circle having a diameter of 4 cm?\n\n'
          'A.      4 cm^2\n'
          'B.      8 cm^2\n'
          'C.    4π cm^2\n'
          'D.    8π cm^2 \n';
    } else if (widget.index == 10) {
      mainText =
          '\n${widget.questionNumber + 1}. A triangle has the following points as the vertices :(0,0)(3,4)(6,0). The triangle is \n\n'
          'A.        a scalene triangle \n'
          'B.   an isosceles triangle\n'
          'C.              a right triangle \n'
          'D.  an equilateral triangle\n';
    } else if (widget.index == 11) {
      mainText =
          '\n${widget.questionNumber + 1}.   If the sides of a quadrilateral are 8 ,14,12, and 20cm and the longest side of similar quadrilateral is 30 cm, how long is the shortest side of this quadrilateral?\n\n'
          'A.     5 cm \n'
          'B.   12 cm\n'
          'C.   15 cm   \n'
          'D.   16 cm\n';
    } else if (widget.index == 12) {
      mainText =
          '\n${widget.questionNumber + 1}. Simplify: 4√27x^2 x √9x^4 \n\n'
          'A.  3x√3x\n'
          'B.        3x\n'
          'C.      √3x \n'
          'D.    4√3x \n';
    } else if (widget.index == 13) {
      mainText =
          '\n${widget.questionNumber + 1}.  What is the remainder when 2x^4 - x^3 + 3x -1 is divided by x + 2? \n\n'
          'A.    0\n'
          'B.    2\n'
          'C.   -2\n'
          'D.  33\n';
    } else if (widget.index == 14) {
      mainText =
          '\n${widget.questionNumber + 1}. Find the fourth term of the arithmetic progression x,y,2y - x,...\n\n'
          'A.       2x - y\n'
          'B.       3x - y \n'
          'C.     3y - 2x   \n'
          'D.      2x- 3y \n';
    } else if (widget.index == 15) {
      mainText =
          '\n${widget.questionNumber + 1}. If x = y + 4 and 20 - y , then what is the value of x^2 - y^2? \n\n'
          'A.  24\n'
          'B.  80\n'
          'C.  16 \n'
          'D.    5 \n';
    } else if (widget.index == 16) {
      mainText =
          '\n${widget.questionNumber + 1}.  if y is an integer and \n y + 3 > 0, what is the last possible value of y?\n\n '
          'A.   -3\n'
          'B.  -2\n'
          'C.  -1\n'
          'D.   2\n';
    } else if (widget.index == 17) {
      mainText =
          '\n${widget.questionNumber + 1}. If the reciprocal of x + 1 is x- 1 , then what is x? \n\n'
          'A.  +√2 , -√2\n'
          'B.             √2 \n'
          'C.               0 \n'
          'D.               2\n';
    } else if (widget.index == 18) {
      mainText =
          '\n${widget.questionNumber + 1}. If the ratio of x to y is 3:7; what is the ratio of x + y to x ? \n\n'
          'A.  3:10\n'
          'B.  7:10 \n'
          'C.  10:3   \n'
          'D.  10:7 \n';
    } else if (widget.index == 19) {
      mainText =
          '\n${widget.questionNumber + 1}. If xy + yz + xz = -10 and xyz = 8, then 1/x + 1/y + 1/z = _____.\n\n'
          'A.    -80\n'
          'B.   -5/4 \n'
          'C.   -4/5    \n'
          'D.    4/5 \n';
    } else {
      mainText = 'This is the College Quest Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            Text(
              ' General Mathematics Test',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.5),
            ),
            SizedBox(width: 10), // Add some space between the text and image
            Image.asset(
              'assets/design 4.png',
              height: 50, // Specify the height of the image
              width: 50, // Specify the width of the image
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
                  style: TextStyle(fontSize: 25.0),
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
                widget.index == 14 ||
                widget.index == 15 ||
                widget.index == 16 ||
                widget.index == 17 ||
                widget.index == 18 ||
                widget.index == 19) ...[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAdditionalText = !showAdditionalText;
                  });
                },
                child: Text(showAdditionalText ? 'Hide Answer' : 'Show Answer'),
              ),
              if (showAdditionalText && widget.index == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C.  23/4 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 1)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. -23 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 2)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C. 3/4 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 3)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. 15 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 4)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C. 1/2 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 5)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D.   a + b + 3 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 6)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. P20.50\n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 7)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C. 216 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 8)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      ' C. 12x^2 - 7x - 10 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 9)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'B. 8 cm^2 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 10)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'B. an isosceles triangle \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 11)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'B. 12\n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 12)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'B. 3x \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 13)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. 33\n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 14)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C. 3y - 2x \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 15)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'B. 80\n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 16)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'B. -2 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 17)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. +√2,-√2 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 18)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C. 10:3 \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 19)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'B. -5/4 \n\n',
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
                      var q = widget.questionNumber;
                      q--;
                      print(widget.questionNumber);
                      print(widget.index);
                      if (widget.index >= 0) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // Questreview(index: widget.index + 1)),
                                  Questreview(
                                      questionNumber: q,
                                      index: random.nextInt(20))),
                        );
                      }
                      if (widget.questionNumber == 0) {
                        q = 19;
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 220, 216, 216), // Change background color
                      textStyle:
                          TextStyle(color: Colors.white), // Change text color
                    ),
                    child: Text('Back', style: TextStyle(fontSize: 16)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var q = widget.questionNumber;
                      q++;
                      print(q);

                      if (widget.index <= 19) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // Questreview(index: widget.index + 1)),
                                  Questreview(
                                      questionNumber: q,
                                      index: random.nextInt(20))),
                        );
                      }
                      if (widget.questionNumber == 19) {
                        q = 0;
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 220, 216, 216), // Change background color
                      textStyle:
                          TextStyle(color: Colors.white), // Change text color
                    ),
                    child: Text('Next', style: TextStyle(fontSize: 16)),
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
