import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class LanguageReview extends StatefulWidget {
  final int index;

  LanguageReview({required this.index});

  @override
  _LanguageReviewState createState() => _LanguageReviewState();
}

class _LanguageReviewState extends State<LanguageReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Language");
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
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0 ||
                index == 1 ||
                index == 2 ||
                index == 3 ||
                index == 4 ||
                index == 5 ||
                index == 6 ||
                index == 7 ||
                index == 8 ||
                index == 9) {
              return ListTile(
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Language Proficiency Test #${index + 1}',
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
                                  index: random.nextInt(10))),
                        );
                      },
                      child: Text('view'),
                    ),
                  ],
                ),
                tileColor: Colors.brown[100 * (index % 9 + 1)],
              );
            } else {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: index == 9
                      ? const Color.fromARGB(255, 17, 152, 193)
                      : Colors.brown[100 * (index % 9 + 1)],
                  borderRadius:
                      BorderRadius.circular(100), // Set border radius here
                ),
                height: 100,
                child: Center(
                  child: Text(
                    'Container ${index + 1}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              );
            }
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
    String mainText;
    if (widget.index == 0) {
      mainText =
          '\n${widget.questionNumber + 1}. She___a beautiful smile that lights up the room and makes everyone feel happy.\n\n'
          'A.    had\n'
          'B.     has\n'
          'C.   have\n'
          'D.     will\n';
    } else if (widget.index == 1) {
      mainText =
          '\n${widget.questionNumber + 1}.  I am neither a morning person,___ do I possess the  patience to wait in long lines for my daily caffeine fix at a crowded coffee shop.\n\n'
          'A.    or\n'
          'B. and \n'
          'C.  nor\n'
          'D.  but\n';
    } else if (widget.index == 2) {
      mainText =
          '\n${widget.questionNumber + 1}. The size of a grain of sand is minuscule__________ the  vastness of a desert. .\n\n'
          'A.              than\n'
          'B.    more than\n'
          'C.                   to\n'
          'D. compared to\n';
    } else if (widget.index == 3) {
      mainText =
          '\n${widget.questionNumber + 1}. The cat jumped the table, knocking over a vase in the process.\n\n'
          'A.  in\n'
          'B.  at\n'
          'C. on\n'
          'D. by\n';
    } else if (widget.index == 4) {
      mainText =
          '\n${widget.questionNumber + 1}. Still, goats and_______ had been in North America for hundreds of years.\n\n'
          'A.     sheep\n'
          'B.    sheeps\n'
          'C.         shep\n'
          'D.      sheves\n';
    } else if (widget.index == 5) {
      mainText =
          '\n${widget.questionNumber + 1}. Ang alab ng puso ko ay ipaglaban ka.\n\n'
          'A.        pighati\n'
          'B.            sakit\n'
          'C.  damdamin\n'
          'D.             poot\n';
    } else if (widget.index == 6) {
      mainText =
          '\n ${widget.questionNumber + 1}. Kahit para bang pasan ko ang daigdig, hindi ako susuko."\n\n'
          'A.      dala-dala\n'
          'B.    mayaman\n'
          'C.            kuba   \n'
          'D.   problema \n';
    } else if (widget.index == 7) {
      mainText =
          '\n${widget.questionNumber + 1}. Nang maglaon, ang kanyang busilak na puso ang naghatid sa kanya ng maayos na buhay.\n\n'
          'A.             mapula       \n'
          'B.            madugo  \n'
          'C.              malinis     \n'
          'D.   maramdamin\n';
    } else if (widget.index == 8) {
      mainText =
          '\n\n${widget.questionNumber + 1}.  Defiled by his opponents.\n\n'
          'A.        respected \n'
          'B.         tarnished \n'
          'C.         maligned\n'
          'D.         criticized\n';
    } else if (widget.index == 9) {
      mainText =
          '\n${widget.questionNumber + 1}. Achievements were applauded\n\n'
          'A.      celebrated\n'
          'B.  reprimanded\n'
          'C.        censured\n'
          'D.   admonished\n';
    } else {
      mainText = 'This is the College Quest Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              'Language Proficiency Test',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/book 1.png',
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
                widget.index == 9) ...[
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
                      'B. has\n\n'
                      'The correct answer is B.has \n The sentence is in the present tense and the subject is singular "She" .\n',
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
                      'C. nor\n\n'
                      ' The sentence is a negative statement that requires the use of "neither" and "nor .',
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
                      'D. compared to \n\n'
                      'The correct answer is D. "compared to" because it is used to the sentence that is comparing the size of a comparison between two things.',
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
                      'C. on\n\n'
                      'The correct answer is C. "on" because it indicates that the cat jumped and landed on the table . The preposition "on" is the table or person in contact with a surface in this case.',
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
                      'A. sheep\n\n'
                      'The correct answer is A "sheep" because it is the correct plural form of the word "sheep. ',
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
                      'C. damdamin \n\n',
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
                      'A. dala-dala\n\n',
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
                      'C. malinis\n\n',
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
                      ' D. criticized \n\n',
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
                      'A. celebrated\n\n',
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
                      print(q);
                      if (widget.index > 0) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // Questreview(index: widget.index + 1)),
                                  Questreview(
                                      questionNumber: q,
                                      index: random.nextInt(10))),
                        );
                      }
                      if (widget.questionNumber == 0) {
                        q = 9;
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
                      var q = widget.questionNumber;
                      q++;
                      print(q);

                      if (widget.index <= 9) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // Questreview(index: widget.index + 1)),
                                  Questreview(
                                      questionNumber: q,
                                      index: random.nextInt(10))),
                        );
                      }
                      if (widget.questionNumber == 9) {
                        q = 0;
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
