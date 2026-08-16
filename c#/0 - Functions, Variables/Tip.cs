var dollars = DollarsToFloat();
var percentage = PercentageToFloat();

var tip = dollars * percentage;

Console.WriteLine($"Leave ${tip:F2}");


decimal DollarsToFloat()
{
    Console.Write("How much was the meal? ");

    var input = Console.ReadLine()!.Replace("$", "");
    return decimal.Parse(input);
}

decimal PercentageToFloat()
{
    Console.Write("What percentage would you like to tip? ");

    var input = Console.ReadLine()!.Replace("%", "");
    return decimal.Parse(input) / 100;
}