import 'package:flutter/material.dart';
import 'dart:math';
import 'sql/sql.dart';

class NumericalReview extends StatefulWidget {
  final int index;

  NumericalReview({required this.index});
  @override
  _NumericalReviewState createState() => _NumericalReviewState();
}

class _NumericalReviewState extends State<NumericalReview> {
  bool showAdditionalText = false;
  Random random = Random();
  final sqlLite = CheckData();
  @override
  void initState() {
    sqlLite.addHistory("Numerical Reasoning");
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
                      'Numerical Reasoning Test #${index + 1}',
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
              tileColor: Colors.lightBlue[100 * (index % 9 + 1)],
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
          '${widget.questionNumber + 1}. Which share had the largest difference between highest and lowest price over the last 12 months? \n';
    } else if (widget.index == 1) {
      mainText =
          '${widget.questionNumber + 1}. Today’s Drebs Ltd share price represents a 40% increase on the price one month ago. What was the Drebs Ltd share price a month ago? \n';
    } else if (widget.index == 2) {
      mainText =
          '${widget.questionNumber + 1}. If a driver travels an average of 4,250 miles per month driving only along motorways in an Xtam car, what is the predicted annual consumption of fuel (in gallons)?\n';
    } else if (widget.index == 3) {
      mainText =
          '${widget.questionNumber + 1}. A car dealership has £600,000 to spend and wants to buy equal numbers of the Taber and Ursa cars. What is the largest number of each type of car that can be ordered?\n';
    } else if (widget.index == 4) {
      mainText =
          '${widget.questionNumber + 1}. Legal sector spending on IT hardware, IT software and IT consulting are all set to increase by the same amounts in Year 6 as they did from Year 4 to Year 5. Assuming this is the case, what would be the total legal sector spending in Year 6 on these three IT areas combined?\n';
    } else if (widget.index == 5) {
      mainText =
          '${widget.questionNumber + 1}. Which of the following statements is false regarding legal sector spending between Year 4 and projected Year 5?\n';
    } else if (widget.index == 6) {
      mainText =
          '${widget.questionNumber + 1}. IKE Computers aim to grow monthly gross profit by 1.5%. If all costs remain constant, what will the sales turnover need to be in February to hit the target?\n';
    } else if (widget.index == 7) {
      mainText =
          '${widget.questionNumber + 1}. If IKE Computers employed eighty permanent employees in January who were on the same salary, what would have been the effect on labour costs if they had replaced twenty permanent employees with interim staff each on monthly salaries of £3,000?\n';
    } else if (widget.index == 8) {
      mainText =
          '${widget.questionNumber + 1}. If the ratio of profit to turnover for Pacific Rim contracts was 2:15, what was the Government turnover in the Pacific Rim (in £100,000s)?\n';
    } else if (widget.index == 9) {
      mainText =
          '${widget.questionNumber + 1}. Reyes Heslop had a target for Leisure profits to be a quarter of their total profits. Assuming profits in other areas remain the same, by how much did the Leisure profits miss this target?\n';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
        title: Row(
          children: [
            const Text(
              'Numerical Reasoning Test',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            const SizedBox(
                width: 10), // Add some space between the text and image
            Image.asset(
              'assets/book 3.png',
              height: 40, // Specify the height of the image
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
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 12.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 1 || widget.index == 1) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 12.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 2 || widget.index == 2) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 43.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 3 || widget.index == 3) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 43.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 4 || widget.index == 4) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 65.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 5 || widget.index == 5) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 65.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 6 || widget.index == 6) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 87.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 7 || widget.index == 7) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 87.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 8 || widget.index == 8) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 910.png'),
                  ),
                ),
              ),
            ],
            if (widget.index == 9 || widget.index == 9) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 450,
                    child: Image.asset('assets/n 910.png'),
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
                  style: TextStyle(fontSize: 23.0),
                ),
              ),
            ),
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
                    'Answer:  Fevs Plc \n\nThe information that we need is shown in the table Share Prices. \n\nStep 1: Calculate the difference between the maximum and the minimum prices.\nHuver Co. = 1,360 – 860 = 500 \nDrebs Ltd = 22 – 11 = 11\n Fevs Plc = 1,955 – 1,242 = 713\n Fauvers = 724 – 464 = 260\n Steapars = 2,630 – 2,216 = 414 \n\nTip: Notice the wording of the question is asking for the share with the largest absolute change in price, NOT the largest percentage change, which would have been Drebs Ltd. If the question had wanted the percentage change it would have used the word percentage',
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
                    'Answer: €12.86\n\nStep 1: Drebs Ltd’s share price is shown as 18 Euros at today’s prices.This is a 40% increase and so represents 1.40 (140%) of the price one month ago.\n\nStep 2: The price one month ago is calculated as follows:18 ÷ 1.40 = 12.86',
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
                    'Answer: 1,500\n\nStep 1: The Xtam’s fuel consumption is shown as 34 miles to the gallon for motorway driving.So, 4,250 miles ÷ 34 = 125 gallons per month.\n\nStep 2: Annual petrol consumption = 125 x 12 = 1,500 gallons',
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
                    'Answer:  21\n\nStep 1: The cost of the Taber and Ursa cars are £12,500 and £15,250 respectively.\n\nStep 2: Since the numbers of each car purchased must be equal, calculate the combined cost as follows: £12,500 + £15,250 = £27,750.\n\nStep 3: £600,000 ÷ £27,750 = 21.6',
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
                    'Answer:  £110 millionThe information that we need is shown in the graph IT spending by the legal sector.\n\nStep 1: Calculate the increases in each IT spending category\nIT hardware = 45 (increase of £5 million from Year 4)\nIT software = 30 (increase of £5 million from Year 4)\nIT consulting = 20 (increase of £5 million from Year 4)\n\nStep 2: Calculate the total for the year after the projected year 5. Since there is an even increase the same increase of £5 million will occur in IT hardware, software and consulting. \nTotal = 45 + 30 + 20 + (3 x 5) = £110 million',
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
                    'Answer:  Spending on IT hardware, software and consulting is projected to decline.\n\nStep 1: Check in turn whether each statement is true or false:\n\nThere are increases projected for IT hardware, for IT software and for consulting, therefore ‘Spending on IT hardware will decline’ is not true. ',
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
                    'Answer: £277,987\n\nStep 1: Calculate the required gross profit increase. 36,521 x 1.5% = £547.82. Given that costs are constant, this means the Net Turnover needs to increase By £547.8 too. So the Net Turnover needs to be £547.8 + £238,521 = £239,068.8.\n\nStep 2: We have worked out the Net Turnover, but the question asks for Sales Turnover (i.e. before the sales tax of 14.0% is deducted). So Sales Turnover = 239,068.8 ÷ 86.0% = £277,986.98.',
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
                    'Answer: Increase of £18,500\n\nStep 1: Calculate the monthly cost of each full-time employee in January166,000 / 80 = 2,075\n\nStep 2: Calculate the difference in monthly labour costs3,000 – 2,075 = 925\n\nStep 3: Calculate the difference of replacing 20 full time employees with interims925 x 20 = £18,500.',
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
                    'Answer: 270\n\nStep 1: Contracts ratio of profit (£3.6million) to turnover = 2:15Turnover = £3.6 million x 15/2 = £27 million = 270 (in £100,000s)',
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
                    'Answer: £3.2 million\n\nStep 1: Calculate the total Reyes Heslop profits across all areas other than Leisure.(6.3 + 7.2 +5.0) + (3.8 + 5.8 + 4.4) + (3.6 + 5.9 + 4.5) + (6.2 +5.1 + 3.5) = 61.3million.\n\nStep 2: This needs to be ¾ of all profits for the condition to be met. Therefore all profits, across all sectors, would be 61.3 ÷ 75% = 81.7333million.\n\nStep 3: Now we look at the difference between actual and target Leisure profits.\nActual = (4.6 + 7.4 + 5.2) = 17.2\nTarget = (81.7333 – 61.3) = 20.4333\nShortfall = 3.2333 (millions)\n\nNote: the INCORRECT way of doing this question would be to:Sum profits across all areas, calculate ¼, then see the difference between that figure and 17.2 million. This method would calculate ¼ of the profits including the reduced.',
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
                                    index: random.nextInt(10))),
                      );
                    }
                    if (widget.questionNumber == 0) {
                      q = 9;
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
