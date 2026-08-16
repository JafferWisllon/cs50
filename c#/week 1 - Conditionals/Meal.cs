Console.Write("What time is it? ");
var time = Console.ReadLine()!.Trim();

var timeInFloat = Convert(time);

if(timeInFloat >= 7 && timeInFloat <= 8)
    Console.WriteLine("breakfast time");
else if (timeInFloat >= 12 && timeInFloat <= 13)
    Console.WriteLine("lunch time");
else if (timeInFloat >= 18 && timeInFloat <= 19)
    Console.WriteLine("dinner time");


double ConvertToHours(string time)
{
    var hours = int.Parse(time.Split(":")[0]);
    var minutes = int.Parse(time.Split(":")[1]);

    return hours + (minutes / 60.0);
}