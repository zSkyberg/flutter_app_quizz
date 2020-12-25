import 'package:flutter_app_quizz/Screens/QuizPage.dart';
import 'package:flutter_app_quizz/Screens/QuizPageTwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_quizz/Screens/QuizPageThree.dart';
void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}
void gotoQuizPageTwo(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPageTwo()),
  );
}
void gotoQuizPageThree(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPageThree()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('Cet Quiz')),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            //color: Colors.black54,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                'MERHABA',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Sınava Hoşgeldiniz.',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              gotoQuizPage(context);
            },
            child: Text('Ülkeler ve Başkentleri',
                style: TextStyle(
                  fontSize: 30,

                ),
            ),
          ),

          SizedBox(
            height: 70,
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              gotoQuizPageTwo(context);
            },
            child: Text('Kitaplar ve Yazarları',
            style: TextStyle(
              fontSize: 30,
              letterSpacing: 1,
            ),),
          ),
          SizedBox(
            height: 70,
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {
              gotoQuizPageThree(context);
            },
            child: Text('Matematik Soruları',
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 2,
              ),),
          ),

        ],
      ),
    );
  }
}