import 'package:first_task_second_try/main.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Friends Page'), backgroundColor: Colors.teal),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.05, screenHeight * 0.08, screenWidth * 0.06, screenHeight * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Welcome To Friends Page'),
              SizedBox(height: 200),
              ElevatedButton(
                child: Text('Return To Main Page'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalCard()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

