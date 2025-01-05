function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) + 1;
}

function baz(x: int): int {
  return bar(x) + 1;
}

function main(): void {
  var x: int = 10;
  var y: int = baz(x);
  echo y; // Expected output: 13
}

//Solution
//Instead of deep function nesting, use a single function with local variables to perform the same operations.  This prevents the stack from overflowing.

function improvedBaz(x: int): int {
  var result: int = x + 1; 
  result = result + 1; 
  result = result + 1;
  return result; //This way it prevents exceeding the stack's capacity
}

function main(): void {
  var x: int = 10;
  var y: int = improvedBaz(x);
  echo y; // Expected output: 13
} 