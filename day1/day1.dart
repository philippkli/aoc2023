import 'dart:io';

void main() {
  final inputdayone = File("input.txt");
  List<dynamic> lines = inputdayone.readAsLinesSync();
  List<dynamic> endLineList = [];
  num sumOfLists = 0;

  for (var l in lines) {
    List<dynamic> numbersInLine = [];
    List<String> singleline = l.split('');
    print(singleline);

    for (int i = 0; i < singleline.length; i++) {
      List<String> lettersInLine = [];
      try {
        int.parse(singleline[i]);
        numbersInLine.add(singleline[i]);
      } catch (Exception) {
        lettersInLine.add(singleline[i]);
      }
    }
    int combinedValue = int.parse('${numbersInLine[0]}${numbersInLine[numbersInLine.length-1]}');
    endLineList = [combinedValue];
    print(endLineList);

    sumOfLists += endLineList[0];
    print("Adding ${endLineList[0]}");
    print("Current Sum: $sumOfLists");
  }
  print("sum of lists: ${sumOfLists}");
}