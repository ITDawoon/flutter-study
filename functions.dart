// 1. Defining a Function
// Function structure = [returnType]+[functionName]([inputType]){}
String functionBasicStructure(String name) {
  return ("Hello $name nice to meet you!");
}

// Fat arrow syntax
// function "=>" reutrn
// Use when function is one line code
String functionFatArrow(String name) => "Hello $name nice to meet you!";
num intFatArrow(num a, num b) => a + b;

// call the function with input
void callFunction() {
  print(functionBasicStructure("Kim"));
}

//----------------------------------------------------------------------
// 2. Named Parameters
// 2-1. Positional parameters(Should avoid to use)
String positionalParameter(String name, int age, String country) {
  return "Hello $name, you are $age, and come from $country";
}

// 2-2. Named Parameter (Recommend way)
// Add {} in parameters that made them into named parameter
String namedParameter({String? name, int? age, String? country}) {
  return "Hello $name, you are $age, and come from $country";
}

// For null safety rule, there're two optoins:
// (1) Give default vaule
String namedParametersDefaultVal({
  String name = 'annon',
  int age = 99,
  String country = 'Wakanda',
}) {
  return "Hello $name, you are $age, and come from $country";
}

// (2) Modifying "required" value
String namedParametersRequired({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and come from $country";
}

void namedParameterCall() {
  print(namedParameter(
    name: 'Kim',
    age: 24,
    country: 'Korea',
  ));
}

//----------------------------------------------------------------------
// 3. Optional Positional Parameters
// Use "[]" and give "DefaultValue"
String optionalPositional(String name, int age, [String? country = 'cuba']) {
  return "Hello $name, you are $age, and come from $country";
}

void optinoalPositionalCall() {
  var result = optionalPositional('Kim', 24);
  print(result);
}

//----------------------------------------------------------------------
// 4. QQ(Question Question) Operator
// 4-1. QQ Operator
// LEFT ?? RIGHT
// IF LEFT==null, return RIGHT
// else, return LEFT
String usingQQoperator(String? name) => name?.toUpperCase() ?? "ANNON";

// Same as below
String usingQsyntax(String? name) =>
    name != null ? name.toUpperCase() : "ANNON";

String usingIfsyntax(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  ;
  return "ANNON";
}

void QQoperatorCall() {
  usingQQoperator("name");
  usingQQoperator(null);
}

// 4-1. QQ Assignment Operator
// QQ Assignment Operator == ??=
// IF parameter == null, input defualt value inside the paramteter
void QQAssignmentOperator() {
  String? name;
  name ??= 'Kim';
  // ERROR: [name] cannot be NULL again after defining it "KIM", so could not call 'another'
  // To fix, "use name == null" before "name ??= another"
  name ??= 'another';
}

//----------------------------------------------------------------------
// 5. Typdef
// Create ALIAS of data types for simplify them
// Help to shorten type definition part
typedef ListOfInts = List<int>;

// Used typedef function
List<int> useTypeDef(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

// Origin type
List<int> BasicFunc(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void TypeDefCall() {
  print(useTypeDef([1, 2, 3]));
}
