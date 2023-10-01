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

//----------------------------------------------------------------------
// 2. Constructors
// Constructors should have same name with class
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
  var player = Constructors("Kim", 1500);
  player.sayHello();
  var player2 = Constructors("Jeong", 1500);
  player2.sayHello();
}

//----------------------------------------------------------------------
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

//----------------------------------------------------------------------
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

//----------------------------------------------------------------------
// 5. Recap (Using Structured Data that have Key and Value)
// Named Constructors using Api structured data
class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main(List<String> args) {
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
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}

//----------------------------------------------------------------------
// 6. Cascade Notation


//----------------------------------------------------------------------
// 7. Enums


//----------------------------------------------------------------------
// 8. Abstract Classes


//----------------------------------------------------------------------
// 9. Inheritance


//----------------------------------------------------------------------
// 10. Mixins


//----------------------------------------------------------------------
// Positional vs Named
//***************************************************
// Named parameters : 
// {} is for when you want named parameters, 
//  like X(name:"", age:1, good:true)
//***************************************************
// Positional parameters : 
// () is for when you want positional parameters, 
//  like X("", 1, true)
//----------------------------------------------------------------------