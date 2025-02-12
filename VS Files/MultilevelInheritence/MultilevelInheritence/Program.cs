using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MultilevelInheritence
{
    class Number
    {
        public int a, b;
        public void getNumber()
        {
            Console.Write("Enter the Number1:");
            a = int.Parse(Console.ReadLine());
            Console.Write("Enter the Number2:");
            b = int.Parse(Console.ReadLine());
        }
    }
    class Addation : Number
    {
        public void addNumber() 
        {
            Console.WriteLine($"The sum of {a} + {b} = {a+b}");
        }
    }
    class Multiple : Addation 
    {
        public void multiplynumber() { 
            Console.WriteLine($"The multiple of {a} * {b} = {a*b}"); 
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            Multiple case1 = new Multiple();
            case1.getNumber();
            case1.addNumber();
            case1.multiplynumber();
            Console.ReadKey();
        }
    }
}
