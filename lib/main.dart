import 'package:first_task_second_try/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(const MaterialApp(
  home: PersonalCard(),
));

class PersonalCard extends StatefulWidget {
  const PersonalCard({super.key});

  @override
  State<PersonalCard> createState() => _PersonalCardState();
}

class _PersonalCardState extends State<PersonalCard> {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(screenWidth * 0.05, screenHeight * 0.08, screenWidth * 0.06, screenHeight * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: screenHeight * 0.12,
                width: screenWidth * 0.24,
                child: ClipRRect(
                  child: Image.asset('assets/akshmo.JPG', fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(screenWidth * 150),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Akshay Mohan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: screenWidth * 0.07,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: screenWidth * 0.01,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
              width: screenWidth * 0.50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'FLUTTER DEVELOPER TRAINEE',
                          style: TextStyle(
                              fontSize: screenWidth * 0.036,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: screenWidth * 0.01
                          ),
                        ),
                        WidgetSpan(child: Divider(color: Colors.white)),
                        WidgetSpan(child: SizedBox(height: screenHeight * 0.01))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            MyCard1(),
            SizedBox(height: screenHeight * 0.01),
            MyCard2(),
            SizedBox(height: screenHeight * 0.01),
            MyCard3(),
          ],
        ),
      ),
    );
  }
}

class MyCard1 extends StatefulWidget {
  @override
  _MyCard1State createState() => _MyCard1State();
}

class _MyCard1State extends State<MyCard1> {


  @override
  void initState() {
    super.initState();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }


  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight * 0.1,
      width: screenWidth * 1,
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: GestureDetector(
                onTap: () async {
                  await _makePhoneCall("+917012298254");
                },
                child: const Icon(
                  Icons.phone,
                  size: 30.0,
                  color: Colors.teal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '7012298254',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard2 extends StatefulWidget {
  @override
  _MyCard2State createState() => _MyCard2State();
}

class _MyCard2State extends State<MyCard2> {

  @override
  void initState() {
    super.initState();
  }
  Future <void> _makeEmail(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(launchUri);
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight * 0.1,
      width: screenWidth * 1,
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: GestureDetector(
                onTap: () async {
                  // Open Gmail to compose a new email.
              await _makeEmail("akshaymohan.career@gmail.com");
                },
                child: const Icon(
                  Icons.mail,
                  size: 30.0,
                  color: Colors.teal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'akshaymohan.career@gmail.com',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class MyCard3 extends StatefulWidget {
  @override
  _MyCard3State createState() => _MyCard3State();
}

class _MyCard3State extends State<MyCard3> {

  @override
  void initState() {
    super.initState();
  }
  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight * 0.1,
      width: screenWidth * 1,
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: GestureDetector(
                onTap: () async {
                  // Open Google Maps to specified location.
                await launchUrl(Uri.parse('https://www.google.com/maps/search/?api=1&query=Kerala%2C+India'));
                },
                child: const Icon(
                  Icons.location_on,
                  size: 30.0,
                  color: Colors.teal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Kerala,India',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
