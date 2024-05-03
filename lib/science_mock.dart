import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class ScienceMockReview extends StatefulWidget {
  final int index;

  ScienceMockReview({required this.index});

  @override
  _ScienceMockReviewState createState() => _ScienceMockReviewState();
}

class _ScienceMockReviewState extends State<ScienceMockReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Science Mock");
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
            SizedBox(width: 10), // Add some space between the image and text
            Text(
              'CQUERE',
              style: TextStyle(fontWeight: FontWeight.bold), // Make text bold
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      ' Science Proficiency Mock #${index + 1}',
                      style: TextStyle(
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
              tileColor: Colors.green[100 * (index % 9 + 1)],
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
          '\n${widget.questionNumber + 1}. In a solution the substance that does the dissolving is called.\n\n'
          'A.        soluble  \n'
          'B.    the solute \n'
          'C.  the solvent  \n'
          'D.           an ion\n';
    } else if (widget.index == 1) {
      mainText =
          '\n${widget.questionNumber + 1}. A solution that cannot hold any more solute at room temperature would be. \n\n'
          'A.                  a dilute solution \n'
          'B.     a concentrated solution \n'
          'C.            a saturated solution\n'
          'D.  a supersaturated solution\n';
    } else if (widget.index == 2) {
      mainText =
          '\n${widget.questionNumber + 1}.    Water is a good solvent because....\n\n'
          'A.                 Water is a good solvent because it is a negatively charged ion.       \n'
          'B.        Water is such a good solvent because it repels most molecules.  \n'
          'C.         Water is such a good solvent because it is such a small molecule   \n'
          'D.Water is a good solvent due to its polarity and small molecular size \n';
    } else if (widget.index == 3) {
      mainText =
          '\n${widget.questionNumber + 1}.  Ethanol dissolved in water would be an example of. \n\n'
          'A. a solution between two miscible liquids\n'
          'B.    a solution between a solid and liquid \n'
          'C.          a suspension between two liquids \n'
          'D. ethanol and water do not form a solution\n';
    } else if (widget.index == 4) {
      mainText =
          '\n${widget.questionNumber + 1}. To form a supersaturated solution requires.  \n\n'
          'A. reducing the amount of solute\n'
          'B.  reducing the amount of solute  \n'
          'C.   reducing the amount of solute \n'
          'D.                        none of the above\n';
    } else if (widget.index == 5) {
      mainText =
          '\n${widget.questionNumber + 1}. Which one of the following is an example of a physical change? \n\n'
          'A.                         iron rusting     \n'
          'B.                 a steak cooking  \n'
          'C. sugar dissolving in water\n'
          'D.               a candle burning\n';
    } else if (widget.index == 6) {
      mainText =
          '\n ${widget.questionNumber + 1}. Which one of the following is not a physical change?  \n\n'
          'A. clothes drying in the dryer \n'
          'B.      making a cup of coffee \n'
          'C.                    chopping wood   \n'
          'D.                      boiling an egg\n';
    } else if (widget.index == 7) {
      mainText =
          '\n${widget.questionNumber + 1}.  The chemicals after a chemical change________. \n\n'
          'A.   have properties identical to the chemicals before the change          \n'
          'B.   have properties different to the chemicals before the change.      \n'
          'C.                                   both A and B           \n'
          'D.                          none of the above \n';
    } else if (widget.index == 8) {
      mainText =
          '\n${widget.questionNumber + 1}.  Heptane is always composed of 84% carbon and 16% hydrogen by mass. What law does this observation Illustrate? \n\n'
          'A.   The Law of Multiple Proportions         \n'
          'B.    The Law of Definite Proportions   \n'
          'C.                The Law of Conservation of Mass  \n'
          'D.                The Law of Conservation of Energy \n';
    } else if (widget.index == 9) {
      mainText =
          '\n${widget.questionNumber + 1}.  Give the mass number for an atom that has 10 protons, 10 electrons, and 11 neutrons. \n\n'
          'A.   31   \n'
          'B.   20  \n'
          'C.   10 \n'
          'D.   21 \n';
    } else if (widget.index == 10) {
      mainText =
          '\n${widget.questionNumber + 1}.  Compared to a glass of ice water with ice in it, a glass of plain ice-cold water without ice on a warm day will warm up.\n\n'
          'A.           faster\n'
          'B.          slower\n'
          'C.  in the same \n amount of time\n'
          'D.  none of the\n above\n';
    } else if (widget.index == 11) {
      mainText =
          '\n${widget.questionNumber + 1}.  Marinades for meat commonly include acids such as vinegar or wine, because the acids can? \n\n'
          'A.   toughen meat   \n'
          'B. tenderize meat\n'
          'C.  preserve meat \n'
          'D.  react with salt \n';
    } else if (widget.index == 12) {
      mainText =
          '\n${widget.questionNumber + 1}. An astronaut picks up a stone on the moon and finds its mass to be 2 kg. If the mass of the earth is 6 times more than the mass of the moon, what will the mass and the weight of the stone be on the earth? \n\n'
          'A.     2 kg. 12N\n'
          'B.       2kg, 20N \n'
          'C.  12kg, 120 N  \n'
          'D.  20kg, 200 N  \n';
    } else if (widget.index == 13) {
      mainText =
          '\n${widget.questionNumber + 1}. Water is boiled in a flask with a balloon over the top. As the water heats, the balloon expands. What has happened to the weight of this flask and balloon in this experiment? \n\n'
          'A. It has increased as the balloon expands. \n'
          'B.   It has decreased as the water boiled away. \n'
          'C.              It has stayed the same. \n'
          'D. It is unpredictable because the balloon is flexible. \n';
    } else if (widget.index == 14) {
      mainText =
          '\n${widget.questionNumber + 1}. A student wishes to find the density of an irregular piece of rock. How will she find volume?\n\n'
          'A.      length x width x height   \n'
          'B.              place it on a triple\n beam balance  \n'
          'C.                put it in a beaker   \n'
          'D.   use water displacement   \n';
    } else if (widget.index == 15) {
      mainText =
          '\n${widget.questionNumber + 1}. A barge filled with scrap iron is in a canal lock. If the barge were to sink what would happen to the water level?  \n\n'
          'A.                                 It would fall \n'
          'B.      It would remain unchanged\n'
          'C.                                It would rise \n'
          'D.  It would depend on its mass. \n';
    } else if (widget.index == 16) {
      mainText =
          '\n${widget.questionNumber + 1}. Are protozoa with no means of locomotion.\n\n '
          'A.      Amoeboids \n'
          'B.             Ciliates \n'
          'C. Zooflagellates \n'
          'D.         Sporozoa\n';
    } else if (widget.index == 17) {
      mainText =
          '\n${widget.questionNumber + 1}.  The vertebrate skeleton. \n\n'
          'A. is a living tissue which grows with the animal.\n'
          'B.         protects internal organs.          \n'
          'C.                 serves as a place of attachment for muscles.  \n'
          'D.                         all of the above      \n';
    } else if (widget.index == 18) {
      mainText =
          '\n${widget.questionNumber + 1}. Protoplasts are cells without? \n\n'
          'A.      a nucleus. \n'
          'B. a membrane. \n'
          'C.             a wall.\n'
          'D.     cytoplasm.\n';
    } else if (widget.index == 19) {
      mainText =
          '\n${widget.questionNumber + 1}.  During the chromosomes attach to the spindle and align at the metaphase plate of the spindle. \n\n'
          'A.          prophase \n'
          'B.  prometaphase \n'
          'C.        metaphase \n'
          'D.          anaphase  \n';
    } else {
      mainText = 'This is the College Quest Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              ' Science Proficiency Mock',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/design 2.png',
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C. the solvent  \n\n',
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
                      'C. a saturated solution \n\n',
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
                      'D. Water is a good solvent due to its polarity and small molecular size \n\n',
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
                      'A. a solution between two miscible liquids \n\n',
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
                      'C. reducing the amount of solute \n\n',
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
                      'C. sugar dissolving in water \n\n',
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
                      'D. boiling an egg \n\n',
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
                      'B. have properties different to the chemicals before the change \n\n',
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
                      ' B. The Law of Definite Proportions \n\n',
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
                      'D. 21 \n\n',
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
                      'A. faster \n\n',
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
                      'B. tenderize meat\n\n',
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
                      'B. 2kg,20N\n\n',
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
                      'C. It has stayed the same\n\n',
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
                      'D. use water displacement \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 15)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'A. It would fall \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 16)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. Sporozoa \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 17)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. all of the above \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 18)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C. a wall \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              if (showAdditionalText && widget.index == 19)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'C. metaphase\n\n',
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
