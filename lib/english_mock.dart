import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class EnglishMockReview extends StatefulWidget {
  final int index;

  EnglishMockReview({required this.index});

  @override
  _EnglishMockReviewState createState() => _EnglishMockReviewState();
}

class _EnglishMockReviewState extends State<EnglishMockReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("English Mock");
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
                        'English Proficiency Mock #${index + 1}',
                        style: const TextStyle(
                          fontSize: 17,
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
                tileColor: Colors.purple[100 * (index % 9 + 1)],
              );
            } else {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: index == 9
                      ? const Color.fromARGB(255, 193, 169, 17)
                      : Colors.purple[100 * (index % 9 + 1)],
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
          '\n${widget.questionNumber + 1}. Which word form is not correct?\n\n'
          'A. Clotheful\n'
          'B.  Clothing\n'
          'C.   Clothed\n'
          'D.     Clothe\n';
    } else if (widget.index == 1) {
      mainText =
          '\n${widget.questionNumber + 1}. What _______ when I called?\n\n'
          'A.  Was you doing\n'
          'B. Was not you do \n'
          'C. Were you doing\n'
          'D. You were doing\n';
    } else if (widget.index == 2) {
      mainText =
          '\n${widget.questionNumber + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.   Becomes\n'
          'B.           Gets \n'
          'C.          Been\n'
          'D.            Got\n';
    } else if (widget.index == 3) {
      mainText =
          '\n${widget.questionNumber + 1}.You can use my car ______ tomorrow.\n\n'
          'A.          Yet\n'
          'B.      Since\n'
          'C.        Until\n'
          'D.   Around\n';
    } else if (widget.index == 4) {
      mainText =
          '\n${widget.questionNumber + 1}. Choose the word that means "to persuade someone to do something through flattery or coaxing".\n\n'
          'A.     Encourage\n'
          'B.             Cajole\n'
          'C.         Beseech\n'
          'D.           Implore\n';
    } else if (widget.index == 5) {
      mainText =
          '\n${widget.questionNumber + 1}. What is the meaning of the word "ameliorate".\n\n'
          'A.    To exacerbate or worsen\n'
          'B. To improve or make better \n'
          'C.              To criticize harshly\n'
          'D.          To accept reluctantly\n';
    } else if (widget.index == 6) {
      mainText =
          '\n${widget.questionNumber + 1}. Choose the word that means "lack of interest or concern."\n\n'
          'A.         Apathy\n'
          'B.              Zeal\n'
          'C.         Alacrity\n'
          'D.  Enthusiasm\n';
    } else if (widget.index == 7) {
      mainText =
          '\n${widget.questionNumber + 1}. Choose the word that makes it wrong . The movie "was so bored" that "most of the audience" left "before it ended".\n\n'
          'A.                      was so bored\n'
          'B.        most of the audience\n'
          'C.                   before it ended\n'
          'D.                               No error\n';
    } else if (widget.index == 8) {
      mainText =
          '\n\n${widget.questionNumber + 1}. Which word is spelled correctly?\n\n'
          'A.      Meticuluous\n'
          'B.        Meticulous \n'
          'C.      Meticulouss\n'
          'D.        Meticuluss\n\n';
    } else if (widget.index == 9) {
      mainText =
          '\n${widget.questionNumber + 1}. Which word is spelled correctly?\n\n'
          'A.   Coalesce\n'
          'B.    Coelesse \n'
          'C.    Coalesse\n'
          'D.      Coalese\n';
    } else {
      mainText = 'This is the College Quest Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              'English Proficiency Mock',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/book 4.png',
              height: 80, // Specify the height of the image
              width: 60, // Specify the width of the image
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
                      'A. Clotheful\n\n'
                      'The word Clotheful" is not a correct word form. The correct word forms are "Clothing" (noun form), "Clothed" (past participle form), and "Clothe" (verb form). "Clotheful" is not a recognized word in the English language.\n',
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
                      'C. Were you doing\n\n'
                      'The correct answer is "were you doing". This is the correct form of the question in past continuous tense. It is asking about the action or activity that the person was engaged in at the time of the call.',
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
                      'B. Gets\n\n'
                      'When the boss is away, nothing "gets" done means that no work or tasks are accomplished in the absence of the boss. The word "gets" implies that there is a lack of productivity or progress during this time.',
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
                      'C.Until\n\n'
                      'The word "until" is the correct answer because it indicates a specific point in time when the action of using the car will end. It implies that the car will be available for use up to a certain time tomorrow, but not after that time.',
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
                      'B. Cajole\n\n'
                      '"Cajole" means to persuade someone through flattery, coaxing, or sweet talk.',
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
                      'B. To improve or make better\n\n'
                      '"Ameliorate" means to make something better or improve a situation.',
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
                      'A. Apathy\n\n'
                      '"Apathy" refers to a lack of interest, concern, or enthusiasm.',
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
                      'A. was so bored\n\n'
                      'The correct word should be "boring" instead of "bored." The correct sentence would be: "The movie was so boring that most of the audience left before it ended."',
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
                      ' B. Meticulous\n\n'
                      'The correct spelling is "Meticulous." It means showing great attention to detail; very careful and precise.',
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
                      'A.Coalesce\n\n'
                      'The correct spelling is "Coalesce." It means to come together and form one mass or whole.',
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
                                  index: random.nextInt(10))),
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
                      backgroundColor: const Color.fromARGB(
                          255, 220, 216, 216), // Change background color
                      textStyle: const TextStyle(
                          color: Color.fromARGB(
                              255, 186, 146, 146)), // Change text color
                    ),
                    child: const Text('Next ', style: TextStyle(fontSize: 16)),
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
