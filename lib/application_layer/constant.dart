final List<String> buttons = [
  "C",
  "DEL",
  "%",
  "/",
  "9",
  "8",
  "7",
  "x",
  "6",
  "5",
  "4",
  "-",
  "3",
  "2",
  "1",
  "+",
  "0",
  ".",
  "ANS",
  "=",
];
bool isOperator(String y) {
  if (y == "%" || y == "/" || y == "x" || y == "-" || y == "+" || y == "=") {
    return true;
  }
  return false;
}
