import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pomodoro(),
  
));

class Pomodoro extends StatefulWidget {
  @override
  _PomodoroState createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  
  double percent = 0;
  static int timeInMinutes = 50;
  int timeInSec = imageMinutes * 60;
  Timer timer;
  String houseImage;
  static int imageMinutes = 50;
  Timer imageTimer;

  _startTimer() {
    timeInMinutes = 50;
    int time = timeInMinutes * 60;
    double secPercent = (time / 100);
    timer = Timer.periodic(Duration(seconds: 1), (timer) {

      setState(() {
        if (time > 0) {
          time--;
          if (time % 60 == 0) {
            timeInMinutes--;
          }
          if (time % secPercent == 0) {
            if (percent < 1) {
              percent += 0.01;
            } else {
              percent = 1;
            }
          }
        } else {
          percent = 0;
          timeInMinutes = 50;
          timer.cancel();
        }

      });

    });

  }


  _startImageTimer()
  {
    imageMinutes= 50;
    timeInSec=imageMinutes*60;
    imageTimer= Timer.periodic(Duration(seconds: 1), (imageTimer)
    {
      setState(() {
        if(timeInSec>0) {
          timeInSec--;
          if(timeInSec%60==0){
            imageMinutes--;
          }
          if (imageMinutes >= 44) {
            houseImage = 'assets/1.JPG';
          }
          else if (imageMinutes >= 38) {
            houseImage = 'assets/2.JPG';
          }
          else if (imageMinutes >= 32) {
            houseImage = 'assets/3.JPG';
          }
          else if (imageMinutes >= 26) {
            houseImage = 'assets/4.JPG';
          }
          else if (imageMinutes >= 20) {
            houseImage = 'assets/5.JPG';
          }
          else if (imageMinutes >= 14) {
            houseImage = 'assets/6.JPG';
          }
          else if (imageMinutes >= 8) {
            houseImage = 'assets/7.JPG';
          }
          else if (imageMinutes >= 2) {
            houseImage = 'assets/8.JPG';
          }
          else if (imageMinutes > 0) {
            houseImage = 'assets/house.jpg';
          }
        }
        else{
          imageMinutes=50;
          imageTimer.cancel();
        }
      });
    });
  }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Timer',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: CircularPercentIndicator(
                    percent: percent,
                    animation: true,
                    animateFromLastPercent: true,
                    radius: 180.0,
                    lineWidth: 15.0,
                    progressColor: Colors.black,
                    center: Text(
                      '$timeInMinutes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 10.0
                ),
                Image(
                  image: AssetImage('$houseImage'),
                ),
                SizedBox(
                    height: 10.0
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: RaisedButton(
                    onPressed: () {
                      _startTimer(); _startImageTimer();
                    },
                    child: Text(
                      'Start',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,

                      ),),
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    )
                  ),
                ),
              ],
            ),
        ),
      );
    }
  }
