import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/timer_screen/timer.dart';
import 'package:flutter_app/timer_screen/about.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text(
              'Build your dreams',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.white,
              )
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(accountName: Text(
              'WELCOME!',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ), accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/house.jpg'),
            ),
            ),
            new ListTile(
              title: new Text('About Page',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                builder: (context) => About()
                ));
              }
            ),
            Divider(
              height: 40.0,
              color: Colors.lightBlue[800],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Increase your productivity while building your dream house!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                    letterSpacing: 1.5,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Choose your activity, set the duration and watch the magic unfold while you are working!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Happy Building!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],

        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/house.jpg'),
            ),
             Divider(
               height: 20.0,
               color: Colors.black,
             ),
             Text(
                'Choose your activity',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
             Divider(
               height: 20.0,
               color: Colors.black,
               ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => Pomodoro(),
                  ),);
                },
                color: Colors.cyan,
                child: Text(
                  'Exercise',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),),
                RaisedButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => Pomodoro(),
                  ),);
                },
                  color: Colors.cyan,
                  child: Text(
                    'Study',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize:18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
                RaisedButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => Pomodoro(),
                  ),);
                },
                  color: Colors.cyan,
                  child: Text(
                    'Gaming',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize:18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
                RaisedButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(context,new MaterialPageRoute(
                    builder: (context) => Pomodoro(),
                  ),);
                },
                  color: Colors.cyan,
                  child: Text(
                    'Rest',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize:18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),),
              ],
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://previews.123rf.com/images/jaaakworks/jaaakworks1609/jaaakworks160900051/62598582-cartoon-man-and-woman-doing-dumbbell-exercise.jpg'),
                  radius: 40.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pinimg.com/736x/24/e9/ba/24e9ba7d5a52311a0ddb14549e0eb49e.jpg'),
                  radius: 40.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn5.vectorstock.com/i/1000x1000/44/44/video-game-controller-cartoon-vector-23674444.jpg'),
                  radius: 40.0,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn4.vectorstock.com/i/1000x1000/90/38/cute-cartoon-boy-sleep-in-bed-good-dream-rest-vector-20409038.jpg'),
                  radius: 40.0,
                ),


              ],
            ),

    ],
          ),
      ),
      );


  }
}










