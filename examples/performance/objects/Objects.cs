class Objects
{
    class Box {
        public readonly int number;

        public Box(int number) {
            this.number = number;
        }
    }

    static void Main(string[] args)
    {
        for (int i = 0; i < 100_000_000; i++)
        {
            var o = new Box(i);
        }
    }
}
