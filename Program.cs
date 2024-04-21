using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BondChecker
{
   class Program
    {
        static void Main(string[] args)
        {
            string sourceFilePath = "./draw-list/list-750.txt"; // Update with actual path
            string targetFilePath = "./my-list/list-750.txt"; // Update with actual path

            try
            {
                // Load numbers from source file into a hash set
                HashSet<string> sourceNumbers = new HashSet<string>(File.ReadLines(sourceFilePath));

                // Load numbers from target file into another hash set
                HashSet<string> targetNumbers = new HashSet<string>(File.ReadLines(targetFilePath));

                // Intersect with the source numbers to find common elements
                sourceNumbers.IntersectWith(targetNumbers);

                // Print the matching numbers
                foreach (string number in sourceNumbers)
                {
                    Console.WriteLine(number);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }
        }
    }
}