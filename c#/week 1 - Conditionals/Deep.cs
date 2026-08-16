Console.Write("What is the Answer to the Greate Question of Life, the Universe, and Everything? ");
var answer = Console.ReadLine()!
    .Replace("-", " ")
    .Trim()
    .ToLowerInvariant();

if(answer == "42" || answer == "forty two")
    Console.WriteLine("Yes");
else
    Console.WriteLine("No");