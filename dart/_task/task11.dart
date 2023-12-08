//List of students(name, class, age, gender, favSport['football, vollyball'])
//sports(footbal(m), coco(f), vollyball(f/m), chess(f/m), carrom(f/m))
//List sports = [{'name': 'footbal', 'eligible': [M]}, {'name': 'vollyball', 'eligible': [M,F]}]
//print stundent name who like football
//ramya(F) is eligible for chess? true/false
//print student avg age who playes carrom

void main() {
//List of students(name, class, age, gender, favSport['football, vollyball'])
  List<Map<String, dynamic>> students = [
    {
      'name': 'Pandian',
      'class': 8,
      'age': 13,
      'gender': 'M',
      'favSport': ['football'],
    },
    {
      'name': 'Ramya',
      'class': 9,
      'age': 14,
      'gender': 'F',
      'favSport': ['vollyball'],
    },
  ];
  List sports = [
    {
      'name': 'footbal',
      'eligible': ['M']
    },
    {
      'name': 'vollyball',
      'eligible': ['M', 'F']
    },
    {
      'name': 'chess',
      'eligible': ['M', ]
    },
  ];

  //Q1. print student name who like football
  int i = 0;
  while (i < students.length) {
    bool checkFootball = students[i]['favSport'].contains('football');

    if (checkFootball) {
      print(students[0]['name']);
    }
    i++;
  }



  
  List eligibleForChess = [];
  for (int i = 0; i < sports.length; i++) {
    bool checkChess = sports[i]['name'] == 'chess';
    if (checkChess) {
      eligibleForChess = sports[i]['eligible'];
    }
  }

  for (int i = 0; i < students.length; i++) {
    bool checkStudentName = students[i]['name'].toLowerCase() == 'ramya';
    if (checkStudentName) {
      var studentGender = students[i]['gender'];
      print(eligibleForChess.contains(studentGender));
    }
  }
}

// 
// ['football'] == 'football';