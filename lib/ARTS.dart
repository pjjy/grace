import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class ArtsReview extends StatefulWidget {
  final int index;

  ArtsReview({required this.index});

  @override
  _ArtsReviewState createState() => _ArtsReviewState();
}

class _ArtsReviewState extends State<ArtsReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Arts & Humanities");
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
                      'Arts & Humanities Review #${index + 1}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to ArtsQuestReview page when the button is clicked

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Questreview(
                                questionNumber: index,
                                index: random.nextInt(15))),
                      );
                    },
                    child: const Text('View'),
                  ),
                ],
              ),
              tileColor: Colors.pink[100 * (index % 9 + 1)],
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
          '\n${widget.questionNumber + 1}. Who painted the Mona Lisa?\n\n'
          'A.         Michelangelo\n'
          'B. Leonardo da Vinci\n'
          'C.        Pablo Picasso\n'
          'D.   Vincent van Gogh\n';
    } else if (widget.index == 1) {
      mainText =
          '\n${widget.questionNumber + 1}. Who wrote "Romeo and Juliet"?\n\n'
          'A. William Shakespeare\n'
          'B.                Jane Austen\n'
          'C.                  Mark Twain\n'
          'D.          Charles Dickens\n';
    } else if (widget.index == 2) {
      mainText =
          '\n${widget.questionNumber + 1}. Who composed the opera "The Magic Flute"?\n\n'
          'A. Wolfgang Amadeus Mozart\n'
          'B.          Ludwig van Beethoven\n'
          'C.        Johann Sebastian Bach\n'
          'D.                       Franz Schubert\n';
    } else if (widget.index == 3) {
      mainText =
          '\n${widget.questionNumber + 1}. What is the nationality of the painter Frida Kahlo?\n\n'
          'A.  Spanish\n'
          'B.    French\n'
          'C. Mexican\n'
          'D.     Italian\n';
    } else if (widget.index == 4) {
      mainText =
          '\n${widget.questionNumber + 1}. Who wrote the novel "To Kill a Mockingbird"?\n\n'
          'A.              Harper Lee\n'
          'B.  F. Scott Fitzgerald\n'
          'C. Ernest Hemingway\n'
          'D.            J.D. Salinger\n';
    } else if (widget.index == 5) {
      mainText =
          '\n${widget.questionNumber + 1}. Who composed the "Four Seasons"?\n\n'
          'A.   Ludwig van Beethoven\n'
          'B. Johann Sebastian Bach\n'
          'C.                Antonio Vivaldi\n'
          'D.           Johannes Brahms\n';
    } else if (widget.index == 6) {
      mainText =
          '\n ${widget.questionNumber + 1}. Who painted "The Starry Night"?\n\n'
          'A.       Pablo Picasso\n'
          'B.        Claude Monet\n'
          'C.  Vincent van Gogh\n'
          'D.          Salvador Dalí\n';
    } else if (widget.index == 7) {
      mainText =
          '\n${widget.questionNumber + 1}. Who wrote "The Canterbury Tales"?\n\n'
          'A. William Wordsworth\n'
          'B.      Geoffrey Chaucer\n'
          'C.                John Milton\n'
          'D. William Shakespeare\n';
    } else if (widget.index == 8) {
      mainText =
          '\n\n${widget.questionNumber + 1}. Who composed the opera "Carmen"?\n\n'
          'A.Wolfgang Amadeus Mozart\n'
          'B.                      Giuseppe Verdi\n'
          'C.         Ludwig van Beethoven\n'
          'D.                        Georges Bizet\n';
    } else if (widget.index == 9) {
      mainText =
          '\n${widget.questionNumber + 1}. Who painted the ceiling of the Sistine Chapel?\n\n'
          'A.  Leonardo da Vinci\n'
          'B.          Michelangelo\n'
          'C.                   Raphael\n'
          'D.                 Botticelli\n';
    } else if (widget.index == 10) {
      mainText = '\n${widget.questionNumber + 1}. Who wrote "1984"?\n\n'
          'A. Aldous Huxley\n'
          'B.  George Orwell\n'
          'C.         H.G. Wells\n'
          'D.      Jules Verne\n';
    } else if (widget.index == 11) {
      mainText =
          '\n${widget.questionNumber + 1}. Who composed the opera "The Marriage of Figaro"?\n\n'
          'A.                  Giacomo Puccini\n'
          'B.                    Richard Wagner\n'
          'C.         Ludwig van Beethoven\n'
          'D. Wolfgang Amadeus Mozart\n';
    } else if (widget.index == 12) {
      mainText =
          '\n${widget.questionNumber + 1}. Who wrote "Pride and Prejudice"?\n\n'
          'A.        Emily Brontë\n'
          'B.        Jane Austen\n'
          'C.  Charlotte Brontë\n'
          'D.      Virginia Woolf\n';
    } else if (widget.index == 13) {
      mainText =
          '\n${widget.questionNumber + 1}. Who composed the "Moonlight Sonata"?\n\n'
          'A.  Wolfgang Amadeus Mozart\n'
          'B.          Ludwig van Beethoven\n'
          'C.        Johann Sebastian Bach\n'
          'D.                       Franz Schubert\n';
    } else if (widget.index == 14) {
      mainText = '\n${widget.questionNumber + 1}. Who painted "Guernica"?\n\n'
          'A.       Pablo Picasso\n'
          'B. Vincent van Gogh\n'
          'C.       Claude Monet\n'
          'D.        Salvador Dalí\n';
    } else {
      mainText = 'This is the Arts Quest Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              'Arts & Humanities Review',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/design 1.png',
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
                      'B. Leonardo da Vinci \n\n',
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
                      'A. William Shakespeare \n\n',
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
                      'A. Wolfgang Amadeus Mozart \n\n',
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
                      'C. Mexican \n\n',
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
                      'A. Harper Lee \n\n',
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
                      'C. Antonio Vivaldi \n\n',
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
                      'C. Vincent van Gogh \n\n',
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
                      'B. Geoffrey Chaucer \n\n',
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
                      'D. Georges Bizet \n\n',
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
                      'B. Michelangelo \n\n',
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
                      'B. George Orwell \n\n',
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
                      'D. Wolfgang Amadeus Mozart \n\n',
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
                      'B. Jane Austen \n\n',
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
                      'B. Ludwig van Beethoven \n\n',
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
                      'A. Pablo Picasso \n\n',
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
                      if (widget.index > 0) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // Questreview(index: widget.index + 1)),
                                  Questreview(
                                      questionNumber: q,
                                      index: random.nextInt(15))),
                        );
                      }
                      if (widget.questionNumber == 0) {
                        q = 14;
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

                      if (widget.index <= 14) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // Questreview(index: widget.index + 1)),
                                  Questreview(
                                      questionNumber: q,
                                      index: random.nextInt(15))),
                        );
                      }
                      if (widget.questionNumber == 14) {
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
