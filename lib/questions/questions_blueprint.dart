class QuestionsClass{

  const QuestionsClass (this.theQuestion,this.answers);

  final String theQuestion ;
  final List answers ;

  List questionsShuffle () { 
    List myShffledList = List.of(answers);
    myShffledList.shuffle();
    return myShffledList;

  }
}