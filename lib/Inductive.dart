import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class InductiveReview extends StatefulWidget {
  final int index;

  InductiveReview({required this.index});

  @override
  _InductiveReviewState createState() => _InductiveReviewState();
}

class _InductiveReviewState extends State<InductiveReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Inductive");
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
                      ' Inductive Reasoning Test #${index + 1}',
                      style: const TextStyle(
                        fontSize: 17,
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
              tileColor: Colors.deepOrange[100 * (index % 9 + 1)],
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
          '${widget.questionNumber + 1}. In a study on dietary habits, it was found that 60% of individuals who consume organic food also prefer homemade meals. If Maria prefers homemade meals, what type of food is she most likely to consume?\n\n'
          'A.           Fast food.\n'
          'B.       Frozen food.\n'
          'C. Processed food.\n'
          'D.      Canned food.\n';
    } else if (widget.index == 1) {
      mainText =
          '${widget.questionNumber + 1}. During a survey on smartphone usage, it was observed that 70% of individuals who own iPhones also own iPads. If Juan owns an iPad, which brand of smartphone is he most likely to own?\n\n'
          'A.      Samsung.\n'
          'B. Google Pixel.\n'
          'C.          Huawei.\n'
          'D.        OnePlus.\n';
    } else if (widget.index == 2) {
      mainText =
          '${widget.questionNumber + 1}. In a study on exercise routines, it was noted that 80% of individuals who practice Pilates also practice yoga. If Maria practices yoga, which form of exercise is she most likely to also practice?\n\n'
          'A. CrossFit.\n'
          'B.    Zumba.\n'
          'C.       Barre.\n'
          'D.     Tai Chi.\n';
    } else if (widget.index == 3) {
      mainText =
          '${widget.questionNumber + 1}. During a survey on travel preferences, it was found that 75% of individuals who prefer beach destinations also enjoy snorkeling. If Juan enjoys snorkeling, which type of travel destination is he most likely to prefer?\n\n'
          'A.  Mountain.\n'
          'B.       Desert.\n'
          'C.       Jungle.\n'
          'D.      Coastal.\n';
    } else if (widget.index == 4) {
      mainText =
          '${widget.questionNumber + 1}. In a study on pet ownership, it was observed that 65% of individuals who own cats also own indoor plants. If Maria owns indoor plants, what type of pet is she most likely to own?\n\n'
          'A.         Dog.\n'
          'B.         Fish.\n'
          'C.         Bird.\n'
          'D. Hamster.\n';
    } else if (widget.index == 5) {
      mainText =
          '${widget.questionNumber + 1}. During a survey on movie preferences, it was noted that 70% of individuals who enjoy action movies also enjoy thrillers. If Juan enjoys thrillers, which genre of movie is he most likely to also enjoy?\n\n'
          'A.    Comedy.\n'
          'B.       Drama.\n'
          'C.        Horror.\n'
          'D.   Romance.\n';
    } else if (widget.index == 6) {
      mainText =
          '${widget.questionNumber + 1}. In a study on transportation choices, it was found that 80% of individuals who use bicycles also use public transportation. If Maria uses public transportation, what mode of transportation is she most likely to also use?\n\n'
          'A.              Car.\n'
          'B. Motorcycle.\n'
          'C.       Scooter.\n'
          'D. Skateboard.\n';
    } else if (widget.index == 7) {
      mainText =
          '${widget.questionNumber + 1}. During a survey on coffee preferences, it was observed that 75% of individuals who drink espresso also enjoy cappuccino. If Juan enjoys cappuccino, which type of coffee is he most likely to also drink?\n\n'
          'A.          Latte.\n'
          'B. Americano.\n'
          'C.        Mocha.\n'
          'D. Macchiato.\n';
    } else if (widget.index == 8) {
      mainText =
          '${widget.questionNumber + 1}. In a study on reading habits, it was noted that 70% of individuals who read science fiction novels also read fantasy novels. If Maria reads fantasy novels, which genre of book is she most likely to also read?\n\n'
          'A.                 Mystery.\n'
          'B.              Romance.\n'
          'C. Historical Fiction.\n'
          'D.                   Thriller.\n';
    } else if (widget.index == 9) {
      mainText =
          '${widget.questionNumber + 1}. During a survey on leisure activities, it was found that 65% of individuals who enjoy hiking also enjoy camping. If Juan enjoys camping, which outdoor activity is he most likely to also enjoy?\n\n'
          'A.             Fishing.\n'
          'B.   Birdwatching.\n'
          'C. Rock Climbing.\n'
          'D.          Kayaking.\n';
    } else if (widget.index == 10) {
      mainText =
          '${widget.questionNumber + 1}. In a study on music preferences, it was observed that 70% of individuals who listen to classical music also listen to jazz. If Maria listens to jazz, which genre of music is she most likely to also listen to?\n\n'
          'A.        Pop.\n'
          'B.      Rock.\n'
          'C.     Blues.\n'
          'D. Hip Hop.\n';
    } else if (widget.index == 11) {
      mainText =
          '${widget.questionNumber + 1}. During a survey on fashion choices, it was noted that 75% of individuals who wear skirts also wear dresses. If Juan wears dresses, which type of clothing is he most likely to also wear?\n\n'
          'A.       Jeans.\n'
          'B.       Shorts.\n'
          'C.   Leggings.\n'
          'D.   Trousers.\n';
    } else if (widget.index == 12) {
      mainText =
          '${widget.questionNumber + 1}. In a study on cooking habits, it was found that 80% of individuals who bake cakes also bake cookies. If Maria bakes cookies, what type of dessert is she most likely to also bake?\n\n'
          'A.          Pies.\n'
          'B. Cupcakes.\n'
          'C.  Brownies.\n'
          'D.     Muffins.\n';
    } else if (widget.index == 13) {
      mainText =
          '${widget.questionNumber + 1}. During a survey on social media usage, it was observed that 70% of individuals who use Facebook also use Instagram. If Juan uses Instagram, which social media platform is he most likely to also use?\n\n'
          'A.     Twitter.\n'
          'B. Snapchat.\n'
          'C.      TikTok.\n'
          'D.   LinkedIn.\n';
    } else if (widget.index == 14) {
      mainText =
          '${widget.questionNumber + 1}. In a study on language learning, it was noted that 75% of individuals who speak Spanish also speak French. If Maria speaks French, which language is she most likely to also speak?\n\n'
          'A.       German.\n'
          'B.          Italian.\n'
          'C. Portuguese.\n'
          'D.    Mandarin.\n';
    } else {
      mainText = 'This is the ICT Test Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              ' Inductive Reasoning Test',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/book 2.png',
              height: 30, // Specify the height of the image
              width: 30, // Specify the width of the image
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
                      'C. Processed food.\n\nExplanation: Since 60% of individuals who consume organic food prefer homemade meals, the remaining 40% may prefer other types of food. Processed food is the most likely alternative among the options provided.',
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
                      'A. Samsung.\n\nExplanation: Given that 70% of individuals who own iPhones also own iPads, Juan is most likely to own a Samsung smartphone since it\'s a popular alternative to iPhones.',
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
                      'C. Barre.\n\nExplanation: With 80% of individuals who practice Pilates also practicing yoga, the remaining 20% might prefer other forms of exercise. Barre is a fitness routine that complements yoga and Pilates, making it the most likely choice.',
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
                      'D. Coastal.\n\nExplanation: Considering that 75% of individuals who prefer beach destinations also enjoy snorkeling, Juan is most likely to prefer coastal destinations for their snorkeling opportunities.',
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
                      'A. Dog.\n\nExplanation: Since 65% of individuals who own cats also own indoor plants, Maria is most likely to own a dog as a pet, as it\'s a common alternative to cat ownership.',
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
                      'A. Comedy.\n\nExplanation: Given that 70% of individuals who enjoy action movies also enjoy thrillers, Juan is most likely to also enjoy comedy movies, which offer a different but similarly engaging viewing experience.',
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
                      ' B. Motorcycle. \n\nExplanation: This is because motorcycles are often chosen by individuals who use bicycles due to their similar characteristics such as agility, fuel efficiency, and ease of maneuverability in urban areas. ',
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
                      'B. Americano.\n\nExplanation: With 75% of individuals who drink espresso also enjoying cappuccino, Juan is most likely to also drink Americano, as it\'s another popular espresso-based coffee choice.',
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
                      'A. Mystery.\n\nExplanation: Since 70% of individuals who read science fiction novels also read fantasy novels, Maria is most likely to also read mystery novels, as they share similar appeal in terms of escapism and imaginative storytelling.',
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
                      'C. Rock Climbing.\n\nExplanation: Considering that 65% of individuals who enjoy hiking also enjoy camping, Juan is most likely to also enjoy rock climbing, as it\'s a physically challenging outdoor activity that complements hiking.',
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
                      'C. Blues.\n\nExplanation: With 70% of individuals who listen to classical music also listening to jazz, Maria is most likely to also enjoy blues music, as it shares similar elements of soulful melodies and improvisation.',
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
                      'C. Leggings.\n\nExplanation: Given that 75% of individuals who wear skirts also wear dresses, Juan is most likely to also wear leggings, as they are a popular alternative for comfort and versatility.',
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
                      'B. Cupcakes.\n\nExplanation: Since 80% of individuals who bake cakes also bake cookies, Maria is most likely to also bake cupcakes, as they are another popular baked dessert choice that complements cookies.',
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
                      'A. Twitter.\n\nExplanation: With 70% of individuals who use Facebook also using Instagram, Juan is most likely to also use Twitter, as it\'s a widely popular alternative social media platform for microblogging and real-time updates.',
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
                      'B. Italian.\n\nExplanation: Considering that 75% of individuals who speak Spanish also speak French, Maria is most likely to also speak Italian, as it\'s another Romance language closely related to French and Spanish.',
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
                      if (widget.index <= 14) {
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
