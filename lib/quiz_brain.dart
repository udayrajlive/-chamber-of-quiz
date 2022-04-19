import 'package:quizzler/questions.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Question> _questionBank =[
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', false),
    Question('Monkshood and aconite are the same plant', true,),
    Question('There are exactly 642 ways to foul in Quidditch.', false),
    Question('The entrance to the prefect\'s bathroom is guarded by a mermaid statue.', false),
    Question('Harry Potter and the Chamber of Secrets is the longest of all the Potter films.',true),
    Question('Hedwig is the first character to die in Harry Potter and the Deathly Hallows', false),
  ];
  void nextQuestion (){
    if (_questionNumber < _questionBank.length -1 ){
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText()             {
    return _questionBank[_questionNumber].questiontext;

  }
  bool getCorrectAnswer() {
                return _questionBank[_questionNumber].questionanswer ;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}