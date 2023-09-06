// gcc objects.c -o objects -Ofast

struct Box
{
    int number;
};

int main()
{
    for (int i = 0; i < 100000000; i++)
    {
       struct Box o;
       o.number = i;
    }

    return 0;
}
