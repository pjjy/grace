import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class Critical_thinkingReview extends StatefulWidget {
  final int index;

  Critical_thinkingReview({required this.index});

  @override
  _Critical_thinkingReviewState createState() =>
      _Critical_thinkingReviewState();
}

class _Critical_thinkingReviewState extends State<Critical_thinkingReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Critical Thinking");
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
                      'Critical Thinking Test #${index + 1}',
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
              tileColor: Colors.yellow[100 * (index % 9 + 1)],
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
      mainText = '\n${widget.questionNumber + 1}. Logical Reasoning:\n'
          'In a room, there are 10 people. Each person shakes hands with every other person exactly once. How many handshakes occur in total?\n\n'
          'A. 45\n'
          'B. 55\n'
          'C. 65\n'
          'D. 90\n';
    } else if (widget.index == 1) {
      mainText =
          '\n${widget.questionNumber + 1}. Mathematical Problem Solving:\n'
          'If a train leaves Manila traveling at 60 km/h and another train leaves Cebu traveling at 80 km/h, how long will it take for the trains to be 500 km apart?\n\n'
          'A. 3 hours\n'
          'B. 4 hours\n'
          'C. 5 hours\n'
          'D. 6 hours\n';
    } else if (widget.index == 2) {
      mainText = '\n${widget.questionNumber + 1}. Verbal Reasoning:\n'
          'Analyze the following statement: "Success is the sum of small efforts, repeated day in and day out." Discuss its implications in the context of personal growth and achievement.\n\n'
          'A.  It emphasizes the importance of consistency and perseverance.\n'
          'B. It suggests that success is solely dependent on individual efforts.\n'
          'C. It highlights the role of luck in achieving success.\n'
          'D. It promotes the idea of instant gratification.\n';
    } else if (widget.index == 3) {
      mainText = '\n${widget.questionNumber + 1}. Deduction:\n'
          'Statement 1: All mammals have hair. \nStatement 2: Elephants are mammals.\n Based on the above statements, which of the following conclusions can be logically deduced?\n\n'
          'A.     Elephants are the\n only mammals with hair.\n'
          'B.         All animals with\n hair are mammals.\n'
          'C.  Elephants have hair.\n'
          'D.   Some mammals do \nnot have hair.\n';
    } else if (widget.index == 4) {
      mainText = '\n${widget.questionNumber + 1}. Critical Reading:\n'
          'Read a passage on a complex socio-political issue and identify the author\'s argument, assumptions, and supporting evidence. Evaluate the strength of the argument and propose alternative perspectives.\n\n'
          'A.  The argument is well-supported and logically sound.\n'
          'B.  The assumptions are flawed and weaken the argument.\n'
          'C.  The evidence provided is insufficient to support the argument.\n'
          'D.  Alternative perspectives are irrelevant to the issue at hand.\n';
    } else if (widget.index == 5) {
      mainText = '\n${widget.questionNumber + 1}. Scientific Reasoning:\n'
          'Explain the process of photosynthesis in plants and discuss its ecological significance. How might climate change impact this process and what are the potential consequences?\n\n'
          'A. Photosynthesis produces oxygen and glucose, supporting life on Earth.\n'
          'B.  Climate change may alter temperature and precipitation patterns, affecting plant growth.\n'
          'C.  Increased carbon dioxide levels can enhance photosynthesis rates.\n'
          'D. All of the above\n';
    } else if (widget.index == 6) {
      mainText = '\n${widget.questionNumber + 1}. Ethical Dilemma:\n'
          'You witness a friend cheating during an exam. Discuss the ethical implications of reporting or not reporting this behavior, considering the potential consequences for both your friend and the academic community.\n\n'
          'A. Reporting the cheating ensures academic integrity but may harm your relationship with your friend.\n'
          'B. Not reporting the cheating protects your friendship but compromises academic honesty.\n'
          'C. Both options have ethical implications and potential consequences.\n'
          'D. It is not your responsibility to address your friend\'s behavior.\n';
    } else if (widget.index == 7) {
      mainText = '\n${widget.questionNumber + 1}. Creative Problem Solving:\n'
          'Design an innovative solution to address traffic congestion in urban areas, considering factors such as sustainability, efficiency, and public safety.\n\n'
          'A. Implementing a comprehensive\n public transportation system\n'
          'B. Encouraging carpooling and ridesharing programs\n'
          'C. Promoting cycling and pedestrian-friendly infrastructure\n'
          'D. All of the above\n';
    } else if (widget.index == 8) {
      mainText = '\n${widget.questionNumber + 1}. Historical Analysis:\n'
          'Analyze a historical event, such as the People Power Revolution in the Philippines, and discuss its significance in shaping the country\'s political landscape and promoting democracy.\n\n'
          'A. It led to the ousting of a dictator and restored democratic governance.\n'
          'B. It inspired similar movements for democracy in other countries.\n'
          'C. It highlighted the power of nonviolent resistance in effecting political change.\n'
          'D. All of the above\n';
    } else if (widget.index == 9) {
      mainText = '\n${widget.questionNumber + 1}. Economic Inquiry:\n'
          'Evaluate the impact of globalization on the Philippine economy. Discuss the opportunities and challenges it presents for various sectors, including agriculture, manufacturing, and services.\n\n'
          'A. Globalization facilitates trade and investment, driving economic growth.\n'
          'B. It can lead to job displacement and income inequality.\n'
          'C. Export-oriented industries may benefit from access to international markets.\n'
          'D. All of the above\n';
    } else if (widget.index == 10) {
      mainText = '\n${widget.questionNumber + 1}. Cultural Critique:\n'
          'Critically assess the portrayal of Filipino culture in mainstream media. Discuss stereotypes, cultural appropriation, and the role of media in shaping perceptions of Filipino identity.\n\n'
          'A. Mainstream media accurately represents the diversity and complexity of Filipino culture.\n'
          'B. Stereotypical portrayals reinforce harmful biases and limit cultural understanding.\n'
          'C. Cultural appropriation in media undermines the authenticity of Filipino traditions.\n'
          'D. All of the above\n';
    } else if (widget.index == 11) {
      mainText = '\n${widget.questionNumber + 1}. Environmental Ethics:\n'
          'Debate the ethical considerations surrounding mining activities in the Philippines. Discuss the balance between economic development and environmental conservation, considering the rights of indigenous communities and long-term sustainability.\n\n'
          'A. Mining generates revenue and employment opportunities, benefiting the economy.\n'
          'B. It can lead to environmental degradation and loss of biodiversity.\n'
          'C. Indigenous communities are often marginalized and displaced by mining operations.\n'
          'D. All of the above\n';
    } else if (widget.index == 12) {
      mainText = '\n${widget.questionNumber + 1}. Geopolitical Analysis:\n'
          'Analyze the territorial disputes in the South China Sea and discuss the implications for regional stability, international relations, and maritime security.\n\n'
          'A. Territorial disputes escalate \ntensions and undermine diplomatic efforts.\n'
          'B. Competing claims raise \nconcerns about freedom of navigation and access to resources.\n'
          'C. International law\n and multilateral negotiations are essential for resolving conflicts.\n'
          'D. All of the above\n';
    } else if (widget.index == 13) {
      mainText = '\n${widget.questionNumber + 1}. Philosophical Inquiry:\n'
          'Discuss the concept of justice in Filipino society. How do cultural values, historical context, and socioeconomic factors influence perceptions of justice and fairness?\n\n'
          'A. Justice is inherently subjective and varies across cultures and contexts.\n'
          'B. Cultural values such as pakikisama and hiya influence notions of right and wrong.\n'
          'C. Socioeconomic disparities can \naffect access to legal rights and remedies.\n'
          'D. All of the above\n';
    } else if (widget.index == 14) {
      mainText = '\n${widget.questionNumber + 1}. Interdisciplinary Problem:\n'
          'Propose a multidisciplinary approach to address a pressing social issue in the Philippines, such as poverty or public health. Consider the contributions of fields such as economics, sociology, public policy, and healthcare in formulating a comprehensive solution.\n\n'
          'A. Implementing social welfare programs \nto alleviate poverty and improve access to education and healthcare\n'
          'B. Promoting community-based initiatives and empowering marginalized groups\n'
          'C. Strengthening public-private partnerships for sustainable development\n'
          'D. All of the above\n';
    } else {
      mainText = 'This is the College Quest Review page.';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              ' Critical Thinking Test',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.5),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/book 2.png',
              height: 30, // Specify the height of the image
              width: 40, // Specify the width of the image
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
                      'C. 65\n\nIn a room with 10 people, each person shakes hands with every other person exactly once. To find the total number of handshakes, you can use the formula n(n-1)/2, where n is the number of people. So, 10(10-1)/2 = 10*9/2 = 45/2 = 45. The number of handshakes is 45.\n\n',
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
                      'B. 4 hours\n\nThe two trains are moving towards each other, so their combined speed is the sum of their individual speeds. The combined speed is 60 km/h + 80 km/h = 140 km/h. To find the time it takes for the trains to be 500 km apart, you divide the distance by the combined speed: 500 km ÷ 140 km/h = 3.57 hours. Rounded to the nearest hour, it takes approximately 4 hours.\n\n',
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
                      'A. It emphasizes the importance of consistency and perseverance.\n\nSuccess is often achieved through consistent effort over time. By repeatedly making small efforts, individuals can make significant progress towards their goals.\n\n',
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
                      'C. Elephants have hair\n\n',
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
                      'A. The argument is well-supported and logically sound.\n\nIn the passage, the author presents a clear argument supported by evidence and logical reasoning. \n\n',
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
                      'A. All of the above\n\nPhotosynthesis is the process by which plants convert light energy into chemical energy, producing oxygen and glucose as byproducts. \n\n',
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
                      'C. Both options have ethical implications and potential consequences.',
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
                      'D. All of the above\n\nAddressing traffic congestion in urban areas requires a multifaceted approach that considers sustainability, efficiency, and public safety. \n\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
// Continue with the remaining questions...
              if (showAdditionalText && widget.index == 8)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'D. All of the above\n\n EDSA Revolution, was a series of nonviolent protests in 1986 that led to the ousting of President Ferdinand Marcos and the restoration of democratic governance. \n\n',
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
                      'D. All of the above\n\nGlobalization has had a profound impact on the Philippine economy, presenting both opportunities and challenges across various sectors. \n\n',
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
                      'D. All of the above\n\nMainstream media plays a significant role in shaping perceptions of Filipino culture.',
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
                      'D. All of the above\n\n',
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
                      'D. All of the above',
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
                      'D. All of the above',
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
                      'D. All of the above',
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
