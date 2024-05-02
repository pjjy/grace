import 'package:flutter/material.dart';
import 'sql/sql.dart';

class NavDrawerExample extends StatefulWidget {
  NavDrawerExample();

  @override
  _NavDrawerExample createState() => _NavDrawerExample();
}

class _NavDrawerExample extends State<NavDrawerExample> {
  final sqlLite = CheckData();
  List courseData = [];
  @override
  void initState() {
    fetchUserData();
    super.initState();
  }

  Future fetchUserData() async {
    var response = await sqlLite.fetcHistory();
    setState(() {
      courseData = response;
      print(courseData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: const Color.fromRGBO(
                150, 120, 85, 0.624), // Background color of the header
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/applogo 2.png', // Replace 'assets/cquere_logo.png' with your image asset path
                      height: 120, // Adjust height as needed
                      width: 120, // Adjust width as needed
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CQUERE',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(
                                255, 248, 247, 247), // Color of the title text
                          ),
                        ),
                        SizedBox(height: 4), // Adjust the height as needed
                        Text(
                          'UPCAT,PUPCET,USTET,ACET,MAPUA,DLSUCET,DCAT,etc.', // Your additional text
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.black, // Color of the additional text
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border), // Icon for Favorites
            title: const Text('Quick Facts', style: TextStyle(fontSize: 19)),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(_NewPage(1, courseData));
            },
          ),
          ListTile(
            leading: const Icon(Icons.history), // Icon for Result History
            title: const Text('Result History', style: TextStyle(fontSize: 19)),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(_NewPage(2, courseData));
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline), // Icon for App Info
            title: const Text('About CQUERE', style: TextStyle(fontSize: 19)),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(_NewPage(3, courseData));
              // Add your logic
            },
          ),
        ],
      ),
    );
  }
}

class _NewPage extends MaterialPageRoute<void> {
  final int id;
  final List courseData;

  _NewPage(this.id, this.courseData)
      : super(
          builder: (BuildContext context) {
            String pageTitle;
            final sqlLite = CheckData();
            if (id == 3) {
              pageTitle = 'About CQUERE';
            } else if (id == 1) {
              pageTitle = 'Quick Facts';
            } else if (id == 2) {
              pageTitle = 'Result History';
            } else {
              pageTitle = 'Page $id';
            }

            Future<void> deleteCourseDialog(BuildContext context, id) async {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Delete History'),
                    content: const Text(
                        "Are you sure you want to delete this history?"),
                    actions: <Widget>[
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          sqlLite.deleteCourseHistory(id);
                          // fetchUserData();
                          Navigator.pop(context);
                        },
                        child: const Text('Delete'),
                      )
                    ],
                  );
                },
              );
            }

            return Scaffold(
              appBar: AppBar(
                title: Text(pageTitle),
                elevation: 1.0,
              ),
              body: Column(
                children: [
                  if (id == 3) // Conditionally render for page 3 only
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/applogo 2.png',
                                height: 200,
                                width: 200,
                              ),
                              const SizedBox(width: 16),
                              const Flexible(
                                child: Text(
                                  'COLLEGE QUEST\nREVIEW',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                              height:
                                  8), // Add space between text and additional text
                          const Text(
                            'Welcome to College Quest Review (CQUERE)!\n\nYour Ultimate College Entrance Companion\n\nAt CQUERE, we\'re dedicated to helping you ace your entrance exams and secure admission to your dream college. With personalized guidance, comprehensive study materials, and a supportive community, CQUERE empowers you to reach your academic goals with confidence and ease.', // Your additional text
                            style: TextStyle(
                              fontSize: 18.5,
                              color: Color.fromRGBO(110, 94, 69, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (id == 2)
                    Expanded(
                      child: ListView.builder(
                        itemCount: courseData.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                courseData[index]["courseName"].toString()),
                            trailing: Wrap(
                              spacing: 12, // space between two icons
                              children: <Widget>[
                                // icon-1
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    deleteCourseDialog(
                                        context, courseData[index]["id"]);
                                  },
                                ), // icon-2
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  if (id == 1)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3000),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(171, 147, 112, 1),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  '\nDid you know?',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 1),
                                Image.asset(
                                  'assets/bulb.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 25.5),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(171, 147, 112, 1),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 15,
                            itemBuilder: (context, index) {
                              // Define your list of descriptions here
                              List<String> descriptions = [
                                'The number "zero" (0) was invented by Indian \nmathematicians around \nthe 6th century AD.',
                                'The human brain is composed \nof about 75% water.',
                                '"E" is the most commonly used\n letter in the English language.',
                                'The shortest war in history lasted only 38 minutes. It was the Anglo-Zanzibar War, fought between Britain and the Sultanate of Zanzibar on August 27, 1896.',
                                'The world\'s largest ocean is the Pacific Ocean, covering an area of about 63 million square miles.',
                                'The concept of "pi" (π) has been studied for over 4,000 years. It represents the ratio of a circle\'s circumference to its diameter.',
                                'A teaspoon of honey is the life work of 12 bees.',
                                'The word "queue" is the only word in the English language that is still pronounced the same way when the last four letters are removed.',
                                'The Great Wall of China is not a continuous wall but a series of walls and fortifications built by various Chinese dynasties over centuries.',
                                'The Philippines is made up of 7,641 islands during low tide and 7,107 islands during high tide.',
                                'The concept of algebra originated from the Arabic word "al-jabr" which means "reunion of broken parts."',
                                'The shortest bone in the human body is the stirrup bone (stapes) located in the middle ear, measuring just 2.8 millimeters.',
                                'The longest word in the English language without a vowel is "rhythms."',
                                'Cleopatra VII of Egypt was not \nactually Egyptian but of Greek descent.',
                                'The official national symbol of the Philippines is the Philippine Eagle, also known as the monkey-eating eagle, one of the largest and most powerful eagles in the world.',
                              ];

                              // Add your item widget here
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                width:
                                    320, // Adjust the width of each item as needed
                                color: const Color.fromRGBO(171, 147, 112,
                                    1), // Example background color
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                          height: 8), // Added SizedBox
                                      Text(
                                        descriptions[
                                            index], // Use description based on index
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 21.5,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            );
          },
        );
}
