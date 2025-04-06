import 'Live_test_1.dart';

void main() {

  List<Student> students = [
    Student("Alice", [85, 90, 78]),
    Student("Bob", [88, 76, 95]),
    Student("Charlie", [90, 92, 85])
  ];


  Map<String, double> avgMap = {};


  for (int i = 0; i < students.length; i++) {
    String name = students[i].name;
    double average = students[i].calculateAverage();
    avgMap[name] = average;
  }


  List<String> names = avgMap.keys.toList();
  for (int i = 0; i < names.length - 1; i++) {
    for (int j = i + 1; j < names.length; j++) {
      if (avgMap[names[j]]! > avgMap[names[i]]!) {
        String temp = names[i];
        names[i] = names[j];
        names[j] = temp;
      }
    }
  }


  print("Output: \n{");
  for (int i = 0; i < names.length; i++) {
    String key = names[i];
    
    String value = avgMap[key]!.toStringAsFixed(2);
    if (value.endsWith("00")) {
      value = avgMap[key]!.toStringAsFixed(1);
    }

    if (i != names.length - 1) {
      print('  "$key": $value,');
    } else {
      print('  "$key": $value');
    }
  }
  print("}");
}