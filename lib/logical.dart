import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class LogicalReview extends StatefulWidget {
  final int index;

  LogicalReview({required this.index});

  @override
  _LogicalReviewState createState() => _LogicalReviewState();
}

class _LogicalReviewState extends State<LogicalReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Logical Reasoning");
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
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      ' Logical Test #${index + 1}',
                      style: const TextStyle(
                        fontSize: 19,
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
                                index: random.nextInt(15))),
                      );
                    },
                    child: const Text('view'),
                  ),
                ],
              ),
              tileColor: Colors.lightGreen[100 * (index % 9 + 1)],
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
          '\n${widget.questionNumber + 1}. A farmer has 100 chickens and cows on his farm. If the total number of legs on the farm is 280, how many chickens does he have?\n'
          'A. 40\n'
          'B. 50\n'
          'C. 60\n'
          'D. 70\n';
    } else if (widget.index == 1) {
      mainText =
          '\n${widget.questionNumber + 1}. If 3x + 4y = 20 and x - 2y = 5, what is the value of x?\n\n'
          'A. 1\n'
          'B. 2\n'
          'C. 3\n'
          'D. 4\n';
    } else if (widget.index == 2) {
      mainText =
          '\n${widget.questionNumber + 1}. The ratio of the length to the width of a rectangle is 3:2. If the perimeter of the rectangle is 50 units, what is its area?\n'
          'A.   60 square units\n'
          'B.   75 square units\n'
          'C.   90 square units\n'
          'D. 100 square units\n';
    } else if (widget.index == 3) {
      mainText =
          '\n${widget.questionNumber + 1}. If a car travels at a speed of 60 kilometers per hour, how far will it travel in 2.5 hours?\n'
          'A. 120 kilometers\n'
          'B. 150 kilometers\n'
          'C. 160 kilometers\n'
          'D. 180 kilometers\n';
    } else if (widget.index == 4) {
      mainText =
          '\n${widget.questionNumber + 1}. What is the next number in the sequence: 1, 4, 9, 16, 25, ...?\n'
          'A. 30\n'
          'B. 36\n'
          'C. 40\n'
          'D. 49\n';
    } else if (widget.index == 5) {
      mainText =
          '\n${widget.questionNumber + 1}. If 2x + 3y = 15 and x + 2y = 10, what is the value of y?\n'
          'A. 1\n'
          'B. 2\n'
          'C. 3\n'
          'D. 4\n';
    } else if (widget.index == 6) {
      mainText =
          '\n${widget.questionNumber + 1}. A square and an equilateral triangle have the same perimeter. If the side length of the square is 6 units, what is the side length of the equilateral triangle?\n'
          'A.   4 units\n'
          'B.   6 units\n'
          'C.   8 units\n'
          'D. 10 units\n';
    } else if (widget.index == 7) {
      mainText =
          '\n${widget.index + 1}. The sum of three consecutive odd numbers is 57. What is the smallest of these numbers?\n'
          'A. 17\n'
          'B. 19\n'
          'C. 21\n'
          'D. 23\n';
    } else if (widget.index == 8) {
      mainText =
          '\n${widget.questionNumber + 1}. If a box contains 12 red balls, 8 blue balls, and 6 green balls, what is the probability of randomly selecting a blue ball from the box?\n'
          'A. 1/3\n'
          'B. 2/9\n'
          'C. 1/4\n'
          'D. 1/2\n';
    } else if (widget.index == 9) {
      mainText =
          '\n${widget.questionNumber + 1}. A ladder is leaning against a wall. The ladder reaches a height of 12 feet on the wall and forms a 45-degree angle with the ground. What is the length of the ladder?\n'
          'A. 12 feet\n'
          'B. 16 feet\n'
          'C. 18 feet\n'
          'D. 24 feet\n';
    } else if (widget.index == 10) {
      mainText =
          '\n${widget.questionNumber + 1}. The difference between two numbers is 12, and their sum is 36. What are the two numbers?\n'
          'A. 12 and 24\n'
          'B. 14 and 26\n'
          'C. 15 and 27\n'
          'D. 18 and 30\n';
    } else if (widget.index == 11) {
      mainText =
          '\n${widget.questionNumber + 1}. In a classroom, there are 30 students, and the ratio of boys to girls is 3:2. How many boys are there in the classroom?\n'
          'A. 12\n'
          'B. 15\n'
          'C. 18\n'
          'D. 20\n';
    } else if (widget.index == 12) {
      mainText =
          '\n${widget.questionNumber + 1}. A bakery sells cakes for P20 each. If the bakery sells 15 cakes in one day, how much money does it make from cake sales?\n'
          'A. P200\n'
          'B. P250\n'
          'C. P300\n'
          'D. P350\n';
    } else if (widget.index == 13) {
      mainText =
          '\n${widget.questionNumber + 1}. The area of a circle is 154 square centimeters. What is the circumference of the circle?\n'
          'A. 22 centimeters\n'
          'B. 28 centimeters\n'
          'C. 36 centimeters\n'
          'D. 44 centimeters\n';
    } else if (widget.index == 14) {
      mainText =
          '\n${widget.questionNumber + 1}. A company produces 500 units of a product per day. If the production rate increases by 20% each month, how many units will the company produce in three months?\n'
          'A. 3,600 units\n'
          'B. 3,840 units\n'
          'C. 4,000 units\n'
          'D. 4,160 units\n';
    } else {
      mainText = 'This is the College Quest Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              ' Logical Test',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/book 3.png',
              height: 35, // Specify the height of the image
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
                  style: const TextStyle(fontSize: 25.0),
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
                      'C. 60\n\n The train travels at a speed of 60 miles per hour, so to travel 120 miles, it would take 120 miles / 60 miles per hour = 2 hours.\n\n',
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
                      'B. 2\n\n The next number in the sequence is obtained by adding 2 to the previous number. So, the next number after 8 would be 8 + 2 = 10.\n\n',
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
                      'C. 90 square units\n\n The sum of the interior angles of a triangle is always 180 degrees. Since there are two interior angles of a rectangle, each measuring 90 degrees, the total sum is 90 + 90 = 180 degrees.\n\n',
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
                      'D. 180 kilometers\n\n If the distance from Town A to Town B is 60 kilometers, and from Town B to Town C is 120 kilometers, then the total distance from Town A to Town C is 60 + 120 = 180 kilometers.\n\n',
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
                      'D. 49\n\n To find the missing number in the sequence, you can add consecutive odd numbers starting from 1. So, 1 + 3 + 5 + 7 + 9 + 11 + 13 = 49.\n\n',
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
                      'A. 1\n\nThe difference between consecutive square numbers follows a pattern where each consecutive square is the sum of the previous square and the next odd number. So, 1 = 0 + 1, 4 = 1 + 3, 9 = 4 + 5, and so on.\n\n',
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
                      'B. 6 units\n\n The perimeter of a square is the sum of all its four sides. Since all sides of a square are equal, you can find the length of one side by dividing the perimeter by 4. Therefore, 24 units / 4 = 6 units.\n\n',
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
                      'A. 17\n\n To solve the equation 5x - 3 = 82, you first add 3 to both sides to isolate the term containing x: 5x = 82 + 3 = 85. Then, you divide both sides by 5: x = 85 / 5 = 17.\n\n',
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
                      'B. 2/9\n\n To find the sum of the fractions, you need to find a common denominator. The least common multiple (LCM) of 3 and 6 is 6. So, 1/3 = 2/6 and 1/6 remains the same. Therefore, 2/6 + 1/6 = 3/6 = 1/2.\n\n',
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
                      'C. 18 feet\n\n The perimeter of a rectangle is given by the formula P = 2(length + width). Given that the length is 8 feet and the width is 1/3 of the length, the width is 8 feet * 1/3 = 8/3 feet. So, the perimeter is P = 2(8 + 8/3) = 2(24/3 + 8/3) = 2(32/3) = 64/3 = 21.33 feet.\n\n',
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
                      'D. 18 and 30\n\n The least common multiple (LCM) of 6 and 15 is the smallest number that both 6 and 15 divide into evenly. The prime factorization of 6 is 2 * 3, and the prime factorization of 15 is 3 * 5. The LCM is the product of all prime factors with the greatest exponent: 2 * 3 * 5 = 30. The factors of 6 are 1, 2, 3, and 6, and the factors of 30 are 1, 2, 3, 5, 6, 10, 15, and 30. The common factors are 1, 2, 3, and 6, so the greatest common factor is 6.\n\n',
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
                      'C. 18\n\nTo find the square root of a number, you need to find a number that, when multiplied by itself, equals the given number. The square root of 324 is 18 because 18 * 18 = 324.\n\n',
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
                      'C. P300\n\n To calculate the total cost, you multiply the price per unit by the number of units purchased. So, P10 * 30 = P300.\n\n',
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
                      'B. 28 centimeters\n\n The circumference of a circle is calculated using the formula C = 2πr, where π (pi) is approximately 3.14 and r is the radius of the circle. Given the circumference C = 88 centimeters, you can solve for the radius: 88 = 2 * 3.14 * r. Divide both sides by 6.28 to isolate r: r ≈ 14. So, the diameter of the circle is 2r = 2 * 14 = 28 centimeters.\n\n',
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
                      'B. 3,840 units\n\nTo find the number of units in a cube, you raise the length of one side to the power of 3. So, 16 * 16 * 16 = 4,096 units.\n\n',
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
                              builder: (context) =>
                                  // Questreview(index: widget.index)),
                                  Questreview(
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
                      if (widget.index < 14) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // Questreview(index: widget.index)),
                                  Questreview(
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
