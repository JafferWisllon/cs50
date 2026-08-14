var input = int.Parse(Console.ReadLine()!);
var e = CalculateEnergy(input);
Console.WriteLine(e.ToString("F0")); // Forcing standard decimal notation

long CalculateEnergy(int m, long c = 300_000_000)
{
    return e = m * c * c;
}