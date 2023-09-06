using System;
using System.Collections.Generic;

class Array
{
    static void Main(string[] args)
    {
        List<int> arr = new List<int>();

        for (int i = 0; i < 100_000_000; i++)
        {
            arr.Add(i);
        }
    }
}
