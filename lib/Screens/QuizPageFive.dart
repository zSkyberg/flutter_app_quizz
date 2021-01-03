import 'package:flutter_app_quizz/Screens/ResultPage.dart';
import 'package:flutter_app_quizz/Service/Question.dart';
import 'package:flutter_app_quizz/Service/QuizManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_quizz/Screens/HomePage.dart';
import 'package:html_unescape/html_unescape.dart';
class QuizPageFive extends StatefulWidget {
  @override
  QuizPageFiveState createState() => QuizPageFiveState();
}
class QuizPageFiveState extends State<QuizPageFive> {
  QuizManager _manager = QuizManager();
  HomePageState levell = HomePageState();
  Future<void> quizloader;
  int add;
  List<Widget> getOptions(Question question) {
    var unescape = HtmlUnescape();
    List<Widget> optionButtons = [];
    for (int i = 0; i < question.options.length; i++) {
      optionButtons.add(FlatButton(
        onPressed: () {
          _manager.nextQuestion(_manager.getCurrentQuestion().options[i].score);
          if (_manager.isFinished()) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ResultPage(
                  score: _manager.getTotalScore(),
                )));
          }
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            unescape.convert('${_manager.getCurrentQuestion().options[i].text}'),
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ));
    }
    return optionButtons;
  }
  @override
  void initState() {
    print(levell.incrementCounter());
    // TODO: implement initState
    //  super.initState();
    quizloader = _manager.LoadQuestions(7,25,'medium');
  }
  @override
  Widget build(BuildContext context) {
    var unescape = HtmlUnescape();
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Questions ${_manager.getCurrentId()}/${_manager.totalQuestionNumber()}'),
        ),
        body: FutureBuilder<void>(
            future: quizloader,
            builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Text(
                            unescape.convert('${_manager.getCurrentQuestion().text}'),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: getOptions(_manager.getCurrentQuestion()),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}