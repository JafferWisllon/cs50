Console.Write("File name: ");
var answer = Console.ReadLine()!.Trim();

var file = answer.Split(".");

if(file.Length <= 1)
    Console.WriteLine("application/octet-stream");
else
{
    var extension = file[^1];
    switch(extension)
    {
        case "gif":
        case "png":
            Console.WriteLine($"image/{file[1]}");
            break;
        case "jpg":
        case "jpeg":
            Console.WriteLine("image/jpeg");
            break;
        case "pdf":
            Console.WriteLine("application/pdf");
            break;
        case "txt":
            Console.WriteLine("text/plain");
            break;
        case "zip":
            Console.WriteLine("application/zip");
            break;
        default:
            Console.WriteLine("application/octet-stream");
            break;
    }
}