import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Srilanka is a worst country in the world', true),
    Question('Haniman, now also he live in srilanka', false),
    Question('Haniman, buy new macbook pro?', true),
    Question('IIT, can they build new lift ??',false),
    Question('IIT, can they build new university in this century ?',false),
    Question('Is java dead language?',true)
  ];

  void nextQuestion(){
    if(_questionNumber<_questionBank.length -1){
      _questionNumber++;
    }
  }

  String getQuestion(){
    return _questionBank[_questionNumber].questionText;

  }

  bool getAnswer(){
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished(){
    if(_questionNumber>=_questionBank.length -1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }


}