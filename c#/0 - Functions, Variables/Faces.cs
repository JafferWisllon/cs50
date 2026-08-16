Console.WriteLine(ConvertFaces(Console.ReadLine()!));

string ConvertFaces(string input)
{
    return input.Replace(":)", "🙂")
                .Replace(":(", "🙁");
}