class Student {
  String name;
  List<int> scores;

  Student(this.name, this.scores);

  double calculateAverage() {
    int sum = 0;
    for (int i = 0; i < scores.length; i++) {
      sum += scores[i];
    }
    double avg = sum / scores.length;
    return double.parse(avg.toStringAsFixed(2));
  }
}


