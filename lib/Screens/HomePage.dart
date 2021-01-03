import 'package:flutter_app_quizz/Screens/QuizPage.dart';
import 'package:flutter_app_quizz/Screens/QuizPageTwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_quizz/Screens/QuizPageThree.dart';
import 'package:flutter_app_quizz/Screens/QuizPageFour.dart';
import 'package:flutter_app_quizz/Screens/QuizPageFive.dart';
import 'package:flutter_app_quizz/Screens/QuizPageSix.dart';
import 'package:flutter_app_quizz/Screens/QuizPageFour.dart';
import 'package:flutter_app_quizz/Service/QuizManager.dart';
import 'package:flutter_app_quizz/Screens/ResultPage.dart';
import 'package:flutter_app_quizz/Service/Question.dart';
import 'package:flutter_app_quizz/Service/QuizManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_quizz/Screens/HomePage.dart';

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
void gotoQuizPageFour(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPageFour()),
  );
}
void gotoQuizPageSix(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPageSix()),
  );
}
void gotoQuizPageFive(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPageFive()),
  );
}
// void gotoQuizPage(BuildContext context) {
//   Navigator.of(context).push(
//     MaterialPageRoute(builder: (context) => QuizPage()),
//   );
// }


// void gotoQuizPageTwo(BuildContext context) {
//   Navigator.of(context).push(
//     MaterialPageRoute(builder: (context) => QuizPageTwo()),
//   );
// }
// void gotoQuizPageThree(BuildContext context) {
//   Navigator.of(context).push(
//     MaterialPageRoute(builder: (context) => QuizPageThree()),
//   );
// }

 class HomePage extends StatefulWidget {
   int a =16;
  @override
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePage> {


  // QuizPageState deneme = QuizPageState();
  get a => 5;
  get b =>10;
  get c=> 15;
  int add;
   @override
   Widget build(BuildContext context) {
     // QuizPageState deneme = QuizPageState();

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
           SizedBox(
             height: 10,
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               RaisedButton(
                 color: Colors.blueAccent,
                 onPressed: () =>   {
                 gotoQuizPage(context),
                   // setState(() {
                   //  add =5;
                   // }),
                   // incrementCounter(),
                 },
                 child: Text('Game category 5 easy',
                   style: TextStyle(
                     fontSize: 25,
                     // letterSpacing: 1,
                   ),),
               ),
               SizedBox(
                 height: 10,
               ),
               RaisedButton(
                 color: Colors.blueAccent,
                 onPressed: () {
                   gotoQuizPageTwo(context);
                   // incrementCounter(),
                   // gotoQuizPage(context);
                 },
                 child: Text('Game category 10 medium',
                   style: TextStyle(
                     fontSize: 25,
                     // letterSpacing: 1,
                   ),),
               ),
               SizedBox(
                 height: 10,
               ),
               RaisedButton(
                 color: Colors.blueAccent,
                 onPressed: () =>   {
                   gotoQuizPageThree(context),
                   // setState(() {
                   //   add =5;
                   // }),
                   // incrementCounter(),
                 },
                 child: Text('Game category 15 hard',
                   style: TextStyle(
                     fontSize: 25,

                     // letterSpacing: 1,
                   ),),
               ),
               SizedBox(
                 height: 10,
               ),
               RaisedButton(
                 color: Colors.greenAccent,
                 onPressed: () =>   {
                   gotoQuizPageFour(context),
                   // setState(() {
                   //   add =5;
                   // }),
                   // incrementCounter(),
                 },
                 child: Text('Art category 5 easy',
                   style: TextStyle(
                     fontSize: 25,

                     // letterSpacing: 1,
                   ),),
               ),
               SizedBox(
                 height: 10,
               ),
               RaisedButton(
                 color: Colors.greenAccent,
                 onPressed: () =>   {
                   gotoQuizPageFive(context),
                   // setState(() {
                   //   add =5;
                   // }),
                   // incrementCounter(),
                 },
                 child: Text('Art category 7 medium',
                   style: TextStyle(
                     fontSize: 25,

                     // letterSpacing: 1,
                   ),),
               ),
               SizedBox(
                 height: 10,
               ),
               RaisedButton(
                 color: Colors.greenAccent,
                 onPressed: () =>   {
                   gotoQuizPageSix(context),
                   // setState(() {
                   //   add =5;
                   // }),
                   // incrementCounter(),
                 },
                 child: Text('Art category 8 hard',
                   style: TextStyle(
                     fontSize: 25,

                     // letterSpacing: 1,
                   ),),
               ),
             ],
           ),

           // RaisedButton(
           //   color: Colors.blueAccent,
           //   onPressed: () {
           //     gotoQuizPage(context);
           //   },
           //   child: Text('Başla',
           //     style: TextStyle(
           //       fontSize: 30,
           //
           //     ),
           //   ),
           //
           // ),

         ],

       ),

     );

   }
  Future <int> incrementCounter() async {
    if (add==5){
      return a;
    }
    if(add==10) {
      return b;
    }
    else return c;
    // setState(() {
    //   a = 10;
    // });
  }


}


 

// import 'package:flutter_app_quizz/Screens/ResultPage.dart';
// import 'package:flutter_app_quizz/Service/Question.dart';
// import 'package:flutter_app_quizz/Service/QuizManager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_app_quizz/Screens/HomePage.dart';

// class QuizPage extends StatefulWidget {
//   @override
//   QuizPageState createState() => QuizPageState();
// }
//
// class QuizPageState extends State<QuizPage> {
//   QuizManager _manager = QuizManager();
//   HomePageState levell = HomePageState();
//   Future<void> quizloader;
//
//
//   List<Widget> getOptions(Question question) {
//     List<Widget> optionButtons = [];
//     for (int i = 0; i < question.options.length; i++) {
//       optionButtons.add(FlatButton(
//         onPressed: () {
//           _manager.nextQuestion(_manager.getCurrentQuestion().options[i].score);
//           if (_manager.isFinished()) {
//             Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => ResultPage(
//                   score: _manager.getTotalScore(),
//                 )));
//           }
//           setState(() {});
//         },
//         child: Container(
//           width: double.infinity,
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: Colors.green,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Text(
//             '${_manager.getCurrentQuestion().options[i].text}',
//             style: TextStyle(
//               fontSize: 25,
//             ),
//           ),
//         ),
//       ));
//     }
//     return optionButtons;
//   }
//   @override
//     void initState() {
//     // TODO: implement initState
//    // super.initState();
//     levell.incrementCounter();
//     quizloader = _manager.LoadQuestions(levell.incrementCounter(),15,'easy');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//               'Questions ${_manager.getCurrentId()}/${_manager.totalQuestionNumber()}'),
//         ),
//         body: FutureBuilder<void>(
//             future: quizloader,
//             builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return Container(
//                   padding: EdgeInsets.all(10),
//                   child: Column(
//                     children: [
//                       Expanded(
//                         flex: 2,
//                         child: Container(
//                           height: 30,
//                           padding: EdgeInsets.symmetric(vertical: 30),
//                           child: Text(
//                             '${_manager.getCurrentQuestion().text}',
//                             style: TextStyle(
//                               fontSize: 15,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         flex: 8,
//                         child: Container(
//                           padding: EdgeInsets.symmetric(horizontal: 20),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.stretch,
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: getOptions(_manager.getCurrentQuestion()),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               } else {
//                 return Center(child: CircularProgressIndicator());
//               }
//             }));
//   }
// }
// import 'package:flutter_app_quizz/Screens/ResultPage.dart';
// import 'package:flutter_app_quizz/Service/Question.dart';
// import 'package:flutter_app_quizz/Service/QuizManager.dart';
// import 'package:flutter/material.dart';
//
// class QuizPage extends StatefulWidget {
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   QuizManager _manager = QuizManager();
//
//   List<Widget> getOptions(Question question) {
//     List<Widget> optionButtons = [];
//     for (int i = 0; i < question.options.length; i++) {
//       optionButtons.add(FlatButton(
//         onPressed: () {
//           _manager.nextQuestion(_manager.getCurrentQuestion().options[i].score);
//           if (_manager.isFinished()) {
//             Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => ResultPage(
//                   score: _manager.getTotalScore(),
//                 )));
//           }
//           setState(() {});
//         },
//         child: Container(
//           width: double.infinity,
//           //height: double.maxFinite ,
//           padding: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: Colors.green,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Text(
//             '${_manager.getCurrentQuestion().options[i].text}',
//             style: TextStyle(
//               fontSize: 25,
//             ),
//           ),
//         ),
//       ));
//     }
//     return optionButtons;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white70,
//         appBar: AppBar(
//           title: Text(
//               'Questions ${_manager.getCurrentId()}/${_manager.totalQuestionNumber()}'),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   padding: EdgeInsets.symmetric(vertical: 30),
//                   child: Text(
//                     '${_manager.getCurrentQuestion().text}',
//                     style: TextStyle(
//                       fontSize: 30,
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 6,
//                 child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: getOptions(_manager.getCurrentQuestion()),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }