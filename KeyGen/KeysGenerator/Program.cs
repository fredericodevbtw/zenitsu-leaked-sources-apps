using System;
using System.Linq;
using System.Threading;

namespace KeysGenerator
{
	internal class Program
	{
		private static string[] keys = { "55B6EABEDEB52A2986F6FB2977C6D", "1DCC897EC57CCAAEF9A6D13B7E52D", "6647389BE4463B94A86AFF2C6CBDF", "9BC53B2B5992FE7B1FE243141E4CA" };

		private static Random Random = new Random();

		private static string header = "\r\n  $$\\   $$\\                     $$$$$$\\                      \r\n  $$ | $$  |                   $$  __$$\\                     \r\n  $$ |$$  / $$$$$$\\  $$\\   $$\\ $$ /  \\__| $$$$$$\\  $$$$$$$\\  \r\n  $$$$$  / $$  __$$\\ $$ |  $$ |$$ |$$$$\\ $$  __$$\\ $$  __$$\\ \r\n  $$  $$<  $$$$$$$$ |$$ |  $$ |$$ |\\_$$ |$$$$$$$$ |$$ |  $$ |\r\n  $$ |\\$$\\ $$   ____|$$ |  $$ |$$ |  $$ |$$   ____|$$ |  $$ |\r\n  $$ | \\$$\\\\$$$$$$$\\ \\$$$$$$$ |\\$$$$$$  |\\$$$$$$$\\ $$ |  $$ |\r\n  \\__|  \\__|\\_______| \\____$$ | \\______/  \\_______|\\__|  \\__|\r\n                     $$\\   $$ |                              \r\n                     \\$$$$$$  |                              \r\n                      \\______/                               \r\n";

		public static string RandomString(int length)
		{
			return new string((from s in Enumerable.Repeat("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", length)
				select s[Random.Next(s.Length)]).ToArray());
		}

		private static bool Login(string key)
		{
			string[] array = keys;
			foreach (string text in array)
			{
				if (key == text)
				{
					return true;
				}
			}
			return false;
		}

		private static void Main(string[] args)
		{
			Console.Title = "Key Generator";
			Console.Clear();
			Console.WriteLine(header);
			Console.WriteLine("Sua chave: " + RandomString(5) + "-" + RandomString(5) + "-" + RandomString(5) + "-" + RandomString(5) + "-" + RandomString(5));
			Console.ReadLine();
		}
	}
}
