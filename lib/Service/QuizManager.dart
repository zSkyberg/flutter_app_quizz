
import 'package:flutter/cupertino.dart';

import 'Question.dart';
import 'Option.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as converter;
import 'package:html_unescape/html_unescape.dart';
import 'package:flutter_app_quizz/Screens/HomePage.dart';
class QuizManager {
  QuizManager() {
    //print("before");
    //LoadQuestions(3);
    //  print("after");
  }
  Future<void> LoadQuestions(int numberOfQuestions,int category,String difficulty) async {
    var url =
        'https://opentdb.com/api.php?amount=$numberOfQuestions&category=$category&difficulty=$difficulty&type=multiple';
    var response = await http.get(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      //print(response.body);
      Map<String, dynamic> json = converter.jsonDecode(response.body);
      //print(json['response_code']);
      //print(json['results'][0]['question']);
      //print(json['results'][1]['question']);
      //print(json['results'][2]['question']);
      //for (var question in json['results']) {
      //  print(question['question']);
      //  print(question['correct_answer']);
      //  print(question['incorrect_answers']);
      //}
      for (int i = 0; i < json['results'].length; i++) {
        var questionJson = json['results'][i];
        print(questionJson['question']);
        print(questionJson['correct_answer']);
        print(questionJson['incorrect_answers']);
        List<Option> options = [];
        options.add(Option(questionJson['correct_answer'], 10));
        for (int j = 0; j < questionJson['incorrect_answers'].length; j++) {
          options.add(Option(questionJson['incorrect_answers'][j], 0));
        }
        Question question = Question(questionJson['question'], options);
        _questions.add(question);
      }

      _questions.shuffle();
      for (var question in _questions) {
        question.options.shuffle();
      }
    }
  }

  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
    /* if(currentQuestionId >= _questions.length -1) {
      return true;
    } else {
      return false;
    }
    */
  }

  Question getCurrentQuestion() {
    print('getCurrentQueestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}
























































































































// import 'Question.dart';
// import 'Option.dart';
//
// class QuizManager {
//   QuizManager() {
//     _questions.add(Question('Türkiye' 'nin başkenti neresidir?', [
//       Option('Ankara', 10),
//       Option('İstanbul', 5),
//       Option('Zurich', 0),
//       Option('Fransa', -5),
//     ]));
//
//     _questions.add(Question('Fransa' 'nın başkenti neresidir?', [
//       Option('Paris', 10),
//       Option('Milano', 5),
//       Option('Lens', 0),
//       Option('Türkiye', -5),
//     ]));
//     _questions.add(Question('İngiltere' 'nin başkenti neresidir?', [
//       Option('Londra', 10),
//       Option('Leeds', 5),
//       Option('İstanbul', 0),
//       Option('Africa', -5),
//     ]));
//
//     _questions.add(Question('Almanya' 'nin başkenti neresidir?', [
//       Option('Berlin', 10),
//       Option('Hamburg', 5),
//       Option('Napoli', 0),
//     ]));
//     _questions.shuffle();
//     for (var question in _questions) {
//       question.options.shuffle();
//     }
//   }
//   AuthorQuizManager() {
//     _questions.add(Question('Nutuk yazarı', [
//       Option('Ankasadasra', 10),
//       Option('İstaasdanbul', 5),
//       Option('Zurasdasich', 0),
//       Option('Fraasdasnsa', -5),
//     ]));
//
//     _questions.add(Question('Çalı Kuşu yazarı', [
//       Option('Pasadsaris', 10),
//       Option('Milasdsaano', 5),
//       Option('Lenasdsas', 0),
//       Option('Türadsdaskiye', -5),
//     ]));
//     _questions.add(Question('Suç ve Ceza Yazarı', [
//       Option('Londradd', 10),
//       Option('Leedsadas', 5),
//       Option('İstanbasdasul', 0),
//       Option('Afrasdasica', -5),
//     ]));
//
//     _questions.add(Question('Incognito yazarı', [
//       Option('dsad', 10),
//       Option('Hamsadasburg', 5),
//       Option('Napodsadli', 0),
//     ]));
//     _questions.shuffle();
//     for (var question in _questions) {
//       question.options.shuffle();
//     }
//   }
//   List<Question> _questions = [];
//   int _score = 0;
//   int currentQuestionId = 0;
//   void nextQuestion(score) {
//     if (currentQuestionId < _questions.length) {
//       _score += score;
//       currentQuestionId++;
//     }
//     print(currentQuestionId);
//   }
//
//   int getTotalScore() => _score;
//   int getCurrentId() => currentQuestionId + 1;
//   int totalQuestionNumber() => _questions.length;
//   bool isFinished() {
//     return currentQuestionId >= _questions.length;
//     /* if(currentQuestionId >= _questions.length -1) {
//       return true;
//     } else {
//       return false;
//     }
//     */
//   }
//
//   Question getCurrentQuestion() {
//     print('getCurrentQueestion $currentQuestionId');
//     if (currentQuestionId < _questions.length) {
//       return _questions[currentQuestionId];
//     } else {
//       return Question('', []);
//     }
//   }
// }
// class AuthorQuizManager {
//
//   AuthorQuizManager() {
//     _questions.add(Question("Nutuk'un yazarı kimdir?", [
//       Option('Mustafa Kemal Atatürk', 10),
//       Option('İsmet İnönü', 5),
//       Option('Kazım Karabekir', 0),
//       Option('Fevzi Çakmak', -5),
//     ]));
//
//     _questions.add(Question("Çalıkuşu'nun yazarı kimdir?", [
//       Option('Reşat Nuri Güntekin', 10),
//       Option('Ahmet Hamdi Tanpınar', 5),
//       Option('Orhan Veli Kanık', 0),
//       Option('Cahit Sıtkı Tarancı', -5),
//     ]));
//     _questions.add(Question("Suç ve Ceza'nın yazarı kimdir?", [
//       Option('Dostoyevski', 10),
//       Option('Orhan Veli Kanık', 5),
//       Option('Tolstoy', 0),
//       Option('Maxim Gorki', -5),
//     ]));
//
//     _questions.add(Question("Taht Oyunları'nın yazarı kimdir?", [
//       Option('George R.R. Martin', 10),
//       Option('J.K. Rowling', 5),
//       Option('J.R.R Tolkien', 0),
//     ]));
//
//     _questions.add(Question("Harry Potter'ın yazarı kimdir?", [
//       Option('George R.R. Martin', 0),
//       Option('J.K. Rowling', 10),
//       Option('J.R.R Tolkien', 0),
//     ]));
//     _questions.shuffle();
//     for (var question in _questions) {
//       question.options.shuffle();
//     }
//   }
//   List<Question> _questions = [];
//   int _score = 0;
//   int currentQuestionId = 0;
//   void nextQuestion(score) {
//     if (currentQuestionId < _questions.length) {
//       _score += score;
//       currentQuestionId++;
//     }
//     print(currentQuestionId);
//   }
//
//   int getTotalScore() => _score;
//   int getCurrentId() => currentQuestionId + 1;
//   int totalQuestionNumber() => _questions.length;
//   bool isFinished() {
//     return currentQuestionId >= _questions.length;
//     /* if(currentQuestionId >= _questions.length -1) {
//       return true;
//     } else {
//       return false;
//     }
//     */
//   }
//
//   Question getCurrentQuestion() {
//     print('getCurrentQueestion $currentQuestionId');
//     if (currentQuestionId < _questions.length) {
//       return _questions[currentQuestionId];
//     } else {
//       return Question('', []);
//     }
//   }
// }
// class MathQuizManager {
//
//   MathQuizManager() {
//     _questions.add(Question("10+85+90", [
//       Option('185', 10),
//       Option('180', 5),
//       Option('190', 0),
//       Option('175', -5),
//     ]));
//
//     _questions.add(Question(" 100-20-30", [
//       Option('50', 10),
//       Option('70', 5),
//       Option('65', 0),
//       Option('60', -5),
//     ]));
//     _questions.add(Question("40+10-5", [
//       Option('35', 10),
//       Option('25', 5),
//       Option('45', 0),
//       Option('50', -5),
//     ]));
//     _questions.add(Question(" 100-20-10", [
//       Option('70', 10),
//       Option('50', 5),
//       Option('65', 0),
//       Option('60', -5),
//     ]));
//     _questions.add(Question("40+10-10", [
//       Option('40', 10),
//       Option('25', 5),
//       Option('45', 0),
//       Option('50', -5),
//     ]));
//     _questions.add(Question("40+10-20", [
//       Option('30', 10),
//       Option('25', 5),
//       Option('45', 0),
//       Option('50', -5),
//     ]));
//
//
//
//     _questions.shuffle();
//     for (var question in _questions) {
//       question.options.shuffle();
//     }
//   }
//   List<Question> _questions = [];
//   int _score = 0;
//   int currentQuestionId = 0;
//   void nextQuestion(score) {
//     if (currentQuestionId < _questions.length) {
//       _score += score;
//       currentQuestionId++;
//     }
//     print(currentQuestionId);
//   }
//
//   int getTotalScore() => _score;
//   int getCurrentId() => currentQuestionId + 1;
//   int totalQuestionNumber() => _questions.length;
//   bool isFinished() {
//     return currentQuestionId >= _questions.length;
//     /* if(currentQuestionId >= _questions.length -1) {
//       return true;
//     } else {
//       return false;
//     }
//     */
//   }
//
//   Question getCurrentQuestion() {
//     print('getCurrentQueestion $currentQuestionId');
//     if (currentQuestionId < _questions.length) {
//       return _questions[currentQuestionId];
//     } else {
//       return Question('', []);
//     }
//   }
// }