#include <iostream>
#include <vector>

// g++ array.cpp -o array++ -Ofast

int main()
{
    // Create a vector containing integers
    std::vector<int> arr;

    for(int i=0;i<100000000;i++) {
        arr.push_back(i);
    }
}
