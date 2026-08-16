Console.Write("Expression: ");
var expression = Console.ReadLine()!.Trim().ToLower().Split(" ");

var x = double.Parse(expression[0]); 
var y = double.Parse(expression[2]);
var op = expression[1];

if (op == "+")
    Console.WriteLine(x + y);
else if (op == "-")
    Console.WriteLine(x - y);
else if(op == "*")
    Console.WriteLine(x * y);
else if(op == "/")
    Console.WriteLine(x / y);