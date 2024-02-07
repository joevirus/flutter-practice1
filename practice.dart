import 'dart:io';
// declaring enum
enum Status{
  Open,
  Assigned,
  Completed,
  Closed
}

void main(){

  print('Welcome to Practice project with Junior');


//List using set
  var iName = 'Junior';
  var iSurname = 'Maphosa';
  var iAge = 'Old very old';

  List<int> fList = [37,38, 40, 11, 23,14, 98, 32,55];

  fList.sort();
  // making set
  var creativeS = {
    'Njabulo': 87,
    'Zoe': 78,
    'Mother': 98
  };
  var mathS =  Map<String, int>();
  mathS['Ben'] = 67;
  mathS['Thabo'] =  76;
  mathS['Lebo'] = 88;

  //making nested if statements
  stdout.write('What is your name?: ');
  var name = stdin.readLineSync();
  stdout.write('Hi $name, welcome to my practice project \n');
  stdout.write('\nHow much did you get for the test?: ');
  var marks = int.parse(stdin.readLineSync()!);
  if (marks > 80 ){
    print('You obtained level 7, Excellent');
  } else if (marks > 70 ) {
    print('You got level 6, Good job!!!');
  } else if (marks > 60 ){
    print('You got level 5, Well done');
  } else if (marks > 50 ) {
    print('You got yourself level 4, keep pushing');
  } else {
    print('You failed the subject, see you next semester');
  } // end of nested if.....

  // writing for loop statement
  stdout.write('Type the name of your students: '); //write namees and seperate by comma
  var students = stdin.readLineSync()!;
  var names = students.split(', ');

  for (int i = 0; i <names.length; i++) {
    print('${names[i]}');
  }
  print('                                                          ');
  for (var name in names ) {
    print('$name');
  }

  // working with enums on incidents report example.

 stdout.write('Enter incident status: \n');
  var inciStatusInt = int.parse(stdin.readLineSync()!);
  var incistatus = Status.values[inciStatusInt];
  switch (incistatus){
    case Status.Open:
      print("Incident have not been closed");
      break;
    case Status.Assigned:
      print('The incident has been assigned to support help team');
      break;
    case Status.Completed:
      print('Incident has been resolved, now waiting for user to confirm');
      break;
    case Status.Closed:
      print('Incident has been resolved and closed');
      break;
  }



  print("\nHello my name is $iName");
  print("My surname is $iSurname");
  print('I am very very $iAge');
  print("The following are grade 9A marks for Creative arts: $creativeS");
  print("The marks $mathS");
  print("The sorted list is : $fList");
}