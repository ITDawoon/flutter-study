// 1. Class Basic Structure
// class [ClassName] {
// (parameter);
// (parameter);
// }
class ClassBasicStructure {
  final String name = 'Kim';
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name");
  }
}

void ClassBasicStructureCall() {
  var player = ClassBasicStructure();
  player.sayHello();
  print(player.name);
  // Error occurs : String name is final
  // player.name = "Jeong";
}

//--------------------------------------------------------------------------------------------
// 2. Constructors
// Constructors should have same name with Class
// and modifying inside the Class
class Constructors {
  final String nm;
  int xp;
// when you use this way ==> classContructor(parameterType parameter),
// you should change the parameter types into [late]
// class ClassConstructors {
//   late final String nm;
//   late int xp;
//   ClassConstructors(String nm, int xp);

// To not repeat call the paraemter's type use "[this.(parameter)]"
  Constructors(this.nm, this.xp);

  void sayHello() {
    print("Hi my name is $nm");
  }
}

void constructorsCall() {
  // Create Class' Instance
  var player = Constructors("Kim", 1500);
  player.sayHello();
  var player2 = Constructors("Jeong", 1500);
  player2.sayHello();
}

//--------------------------------------------------------------------------------------------
// 3. Named Constructor Parameters
class namedConstructorsParameter {
  final String nm;
  int xp;
  String team;
  int age;

// create parameter inside the Constructor
// make them inside the {}(curly braket) for named parameter syntax
// with "this.(parameter)"
  namedConstructorsParameter({
    required this.nm,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hi my name is $nm");
  }
}

void namedConstructorsParameterCall() {
  var player = namedConstructorsParameter(
    nm: "Kim",
    xp: 1500,
    team: 'red',
    age: 12,
  );
  var player2 = namedConstructorsParameter(
    nm: "Jeong",
    xp: 1500,
    team: 'blue',
    age: 14,
  );
}

//--------------------------------------------------------------------------------------------
// 4. Named Constructors
class namedConstructors {
  final String nm;
  int xp;
  String team;
  int age;

  namedConstructors({
    required this.nm,
    required this.xp,
    required this.team,
    required this.age,
  });

// **** IMPORTANT *****
// the ":"(colon)  is doing initialising the Class
// Named Parameter syntax
  namedConstructors.createBluePlayer({
    required String nm,
    required int age,
  })  : this.nm = nm,
        this.age = age,
        this.team = 'blue',
        this.xp = 0;

// Positional Parameter syntax
  namedConstructors.createRedPlayer(String nm, int age)
      : this.nm = nm,
        this.age = age,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is $nm");
  }
}

void namedConstructorsCall() {
  // Positional syntax
  var player = namedConstructors.createRedPlayer(
    "Kim",
    15,
  );
  // Named syntax
  var player2 = namedConstructors.createBluePlayer(
    nm: "Jeong",
    age: 17,
  );
}

//--------------------------------------------------------------------------------------------
// 5. Recap (Using Structured Data that have Key and Value)
// Named Constructors using Api structured data
class Recap {
  final String name;
  int xp;
  String team;

  Recap.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void Recapmain(List<String> args) {
  var apiData = [
    {
      "name": "Kim",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "Jeong",
      "team": "blue",
      "xp": 0,
    },
    {
      "name": "Mun",
      "team": "green",
      "xp": 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Recap.fromJson(playerJson);
    player.sayHello();
  });
}

//--------------------------------------------------------------------------------------------
// 6. Cascade Notation
void cascadeMain() {
  // Origin way of change the value of Class
  // var kim = Player(name: 'Kim', xp: 1200, team: 'red');
  // kim.name = 'asd';
  // kim.xp = 12000000;
  // kim.team = 'blue';

  // Cascade operator
  // ".."(double dot) for redefine the value
  var kim = className(name: 'Kim', xp: 1200, team: 'red')
    ..name = 'asd'
    ..xp = 12000000
    ..team = 'blue'
    ..sayHello();
}

//--------------------------------------------------------------------------------------------
// 7. Enums
// Enums is for constraint choises
// Helping to reduce mistyping
enum Teamm { red, blue }

enum XPLevel { beginner, medium, pro }

void enumMain() {
  var potato = className(name: 'potato', xp: 12000, team: Teamm.blue)
    ..name = 'kimchi'
    // Call Enum ==> ""[EnumName].[EnumValue]""
    ..xp = XPLevel.medium as int
    ..team = Teamm.blue
    ..sayHello();

  var kim = className(name: 'Kim', xp: 1200, team: Teamm.red)
    ..name = 'asd'
    ..xp = XPLevel.pro as int
    ..team = Teamm.red
    ..sayHello();
}

//--------------------------------------------------------------------------------------------
// 8. Abstract Classes
// Abstract Class allow other class to have which kind of blueprint they should have
abstract class Humann {
  void walk();
}

class Man extends Humann {
  late String name;
  late int xp;
  late int age;

  void walk() {
    print("I'm walking");
  }
}

//--------------------------------------------------------------------------------------------
// 9. Inheritance ***** IMPORTANT *****
// using "[extends]" for Inheritance
// "[super]" class == Parent class that extended from(e.g., Humannn)
class Humannn {
  final String name;
  Humannn({required this.name}); // Being called
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Playerrr extends Humannn {
  final Team team;

  Playerrr({
    required this.team,
    required String name,
    // with "super" keyword, helps to connect with Parent class(Humannn) where extended from
  }) : super(name: name); // Call Humannn Constructor properties(name)

  // override == override the properties/method in ParentClass(e.g., override sayHello() from Humannn Class)
  @override
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}

void main() {
  var player = Playerrr(
    team: Team.red,
    name: 'Kim',
  );
}

//--------------------------------------------------------------------------------------------
// 10. Mixins
// Mixins == Class that doesn't have Constructors
// Use when add properties into Class
class Strong {
  final double strngthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("runnnnnnn");
  }
}

// Use "[with]", bring "properties" and "method" from other Classes
class Player with Strong, QuickRunner {}

//--------------------------------------------------------------------------------------------
// Positional vs Named
//***************************************************
// Named parameters :
// {} is for when you want named parameters,
//  like X(name:"", age:1, good:true)
//***************************************************
// Positional parameters :
// () is for when you want positional parameters,
//  like X("", 1, true)
//--------------------------------------------------------------------------------------------
