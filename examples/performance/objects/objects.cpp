// g++ objects.cpp -o objects++ -Ofast

class Box
{
public:
    const int number = 0;
    Box(int number) : number(number) {}
};

int main()
{
    for (int i = 0; i < 100000000; i++)
    {
        auto o = Box(i);
    }

    return 0;
}
