import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
debugShowCheckedModeBanner: false,
home: About(),
));

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'About Pomodoro',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Column(
          children: [
            Text(
              'Pomodoro Technique',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                letterSpacing: 2.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
                height: 10.0
            ),
            Text(
              'The Pomodoro Technique is a time management method which uses a timer to break down work into intervals, each of 50 minutes duration.',
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 1.5,
                color: Colors.cyan,
              ),
            ),
            SizedBox(
                height: 10.0
            ),
            Text(
              'Simply decide on a task and get your work done in the most efficient way possible, while also building a house!',
              style: TextStyle(
                fontSize: 18.0,
                letterSpacing: 1.5,
                color: Colors.purple[200],
              ),
            ),
            SizedBox(
                height: 20.0
            ),
            Text(
              'Happy Building!',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
            Image.network(
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/df28d753-177e-4d48-be1b-35ed8efacbf0/d9hub0g-0c467c78-e35f-40aa-b794-69b648b6e23d.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvZGYyOGQ3NTMtMTc3ZS00ZDQ4LWJlMWItMzVlZDhlZmFjYmYwXC9kOWh1YjBnLTBjNDY3Yzc4LWUzNWYtNDBhYS1iNzk0LTY5YjY0OGI2ZTIzZC5naWYifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.QjqsBJr2RoXL6xypNnfovOViX1MIxl00kdTgDoQRqSc',
            ),
          ],
        ),
      )
    );
  }
}
