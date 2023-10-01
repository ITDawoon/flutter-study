// 1. Basic structure of Dart
// Dart call and activate only main()
void main() {
  // Don't forget to add semicolon at the end
  print("Hello, world!");
}

//--------------------------------------------------------------------------------------------
// 2. The var keyword
void Var() {
  // using var method when the variable is inside the function or method == local variable
  // Two ways of creating variables: 1.var 2.Using types(String, int, ...)
  // Variables can be updated till the type is remained
  var name = "name";
  String number = "number";
}

//--------------------------------------------------------------------------------------------
// 3. Dynamic Type
void Dynamic() {
  // this var can be any types of variables == Dynamic variable
  dynamic name;
  name = "yellow monkey";
  name = 12;
  name = true;
}

//--------------------------------------------------------------------------------------------
// 4. Nullable Variables
void Nullable() {
  // This "?(Question mark)" meaning that this String can be String/null
  // Null safety == the specific data/variable may be null
  // By default, all variables == non-nullable
  String? name = "name";
  name = null;

  // First way of null check (these are same func)
  if (name != null) {
    name.isNotEmpty;
  }
  // Second way of null check (these are same func)
  name?.isNotEmpty;
}

//--------------------------------------------------------------------------------------------
// 5. Final Variables
// final variable can not be changed
// same as "const"
void Final() {
  final String name = "name";

  // Error occurs when you try to change the var
  //name = "losAg"
}

//--------------------------------------------------------------------------------------------
// 6. Late Variables
// help to create variables without any data
// declare data LATTER
// Good for when trying to get the data using API
void Late() {
  late final String name;
  name = "name";
}

//--------------------------------------------------------------------------------------------
// 7. Constant Variables
// const ONLY use when you know this variable in """complie-time"""
void Constant() {
  const name = 'name';
  // Error occurs : Cuz const is only using in complie-time
  //cont API = FetchAPI()
}
