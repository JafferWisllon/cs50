var greeting = Input("Greeting: ");

if (greeting.StartsWith("hello"))
    Console.WriteLine("$0");
else if (greeting.StartsWith("h"))
    Console.WriteLine("$20");
else
    Console.WriteLine("$100");

string Input(string placeholder)
{
    Console.Write(placeholder);
    return Console.ReadLine()!.Trim().ToLower();
}