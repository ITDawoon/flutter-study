// 1. Basic Data Types
void DataType() {
  String name = "name";
  bool alive = true;

  int age = 12;
  double money = 69.99;
  // num can be int/double
  // num is a father class of int and double
  num x = 12;
}

//------------------------------------------------------------------------------------
// 2. Lists
void Lists() {
  // Both are same
  // List<int> numbers = [1, 2, 3, 4, ];
  // var numbers = [1, 2, 3, 4, ];

  // Collection if
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
    // ==
    // if (giveMeFive) {
    //   numbers.add(5);
    // }
  ];
  print(numbers);
}

//------------------------------------------------------------------------------------
// 3. String Interpolation
void StringInterpolation() {
  // Syntax for including pure variable
  var name1 = "Paul";
  var greeting1 = "Hello everyone, my name is $name1, nice to meet you!";
  print(greeting1);

  // Syntax for operated result's variable
  var name2 = "Paul";
  var age2 = 10;
  var greeting2 = "Hello everyone, my name is $name2 and I'm ${age2 + 2}";
  print(greeting2);
}

//------------------------------------------------------------------------------------
// 4. Collection For
void CollectionFor() {
  var oldF = ["Kim", "Lynn"];
  var newF = [
    "Ralph",
    "Gemme",
    for (var f in oldF) "@@ $f",
    // ==
    // for (var f in oldF) {
    //   newF.add(f);
    // }
  ];
  print(newF);
}

//------------------------------------------------------------------------------------
// 5. Maps
// Same as Dictionary in Python
void Maps() {
  // When Key is String
  Map<String, Object> player = {
    'nm': 'Kim',
    'xp': 19.99,
    'power': false,
  };
  // When Key is int
  Map<int, bool> Bool = {
    1: true,
    2: false,
    3: true,
  };
  // When Key is List<int>
  Map<List<int>, bool> Test = {
    [1, 2, 3, 4]: true,
  };
}

//------------------------------------------------------------------------------------
// 6. Sets
void main() {
  var nums = {1, 2, 3, 4};
  Set<int> numbers = {5, 6, 7, 8};
}
//------------------------------------------------------------------------------------
// ***********************************
// Set vs List

// *** Set == {}, List == []

// *** List(Dart) == List(Python) ***
// List allow duplication

// *** Set(Dart) == Tuple(Python) ***
// Set not allow duplication
// ***********************************