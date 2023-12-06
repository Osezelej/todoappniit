import 'dart:async';
import 'dart:math';

void main() {
  // OUTPUT IN DART

  // print("hello world");

  // VARIABLES & DATA TYPES IN DART

  // var name = "joseph";
  // print(name);
  // dynamic name = 'joseph';
  // print(name);
  // name = 50;
  // print(name);

  // String? name;
  // int age = 5;
  // double height = 20.4;
  // bool ismarried = false;
  // print(name);
  // print(age);
  // print(height);
  // print(ismarried);

  // SECONDARY DATA TYPE IN DART

  List names = ['joseph', 'samuel', 'rodiya'];
  // print(names);
  // Map<String,int> nameage = {'joseph': 5, 'samuel': 4, 'rodiya': 10};
  // print(nameage);
  // late String name;

  // CONDITIONAL STATEMENT IN DART

  // if(contion){
  //   do this
  // }else{
  // }

  // switch (value) {
  //   case '':
  //     break;
  //   default:

  // }

// LOOPS IN DART

//   for (int i = 0; i < 10; i++){

//   }

// for (var name in names){

// }
// names.map((e) => null)
// names.forEach((element) { })

// while (codition){

// }

// do{

// }while(conditon)

  // FUNCTIONS IN DART

  // addnum(int first, int second)async {
  //   return first + second;
  // }

  // OOP IN DART

  Student joseph = Student(studentName: '', studentId: '');
  joseph.studentId = '';
  print(joseph.studentId);

// EXAMPLE USING DART
  List nums = [-21, 10, 20, -3, 5, 50, 30, -41];
  // int minVal = 0;
  // int maxVal = 0;
  // nums.forEach((element) {
  //   // print(element);
  //   if (minVal > element) {
  //     minVal = element;
  //   }
  //   if (maxVal < element) {
  //     maxVal = element;
  //   }
  // });
  // print(minVal);
  // print(maxVal);

  var length = nums.length;
  List sortedNums = [];
  List negArray = [];
  List posArray = [];
  int numsLength = nums.length;
  //  for neg value

  for (var num = 0; num < numsLength; num++) {
    if (nums[num] < 0) {
      negArray.add(nums[num]);
    }
  }
  print(negArray);
  var sortedNegVal = [];
  int negArraylength = negArray.length;
  for (var i = 0; i < negArraylength; i++) {
    var minvalue = 0;
    var minIndex = 0;
    for (var w = 0; w < negArraylength - i; w++) {
      if (minvalue > negArray[w]) {
        minvalue = negArray[w];
        minIndex = w;
      }
    }
    sortedNegVal.add(minvalue);
    negArray.removeAt(minIndex);
  }

  sortedNums.addAll(sortedNegVal);

  // for pos value

  for (var num = 0; num < numsLength; num++) {
    if (nums[num] > 0) {
      posArray.add(nums[num]);
    }
  }
  print(posArray);
  var sortedPosVal = [];
  int posArraylength = posArray.length;
  for (var i = 0; i < posArraylength; i++) {
    var minvalue = 10000000;
    var minIndex = 0;
    for (var w = 0; w < posArraylength - i; w++) {
      if (minvalue > posArray[w]) {
        minvalue = posArray[w];
        minIndex = w;
      }
    }
    sortedPosVal.add(minvalue);
    posArray.removeAt(minIndex);
  }
  print(sortedNegVal);
  print(sortedPosVal);
  sortedNums.addAll(sortedPosVal);
  // print(nums);
  print(sortedNums);

  counter() {
    var count = 0;
    return () {
      return count++;
    };
  }

  var increment = counter();
  print(increment());
  print(increment());
  print(increment());
  print(increment());
}

// CLASSES IN DART
class Student {
  late String? studentId;
  late String studentName;

  Student({this.studentId, required this.studentName});
}
