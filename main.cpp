#include <iostream>
#include "calculator.h"

int main()
{
    Calculator calculator;

    int a = 10;
    int b = 5;

    std::cout << "Addition: " << calculator.Add(a, b) << std::endl;

    std::cout << "Subtraction: "<< calculator.Sub(a, b) << std::endl;

    std::cout << "Multiplication: " << calculator.Mul(a, b) << std::endl;

    return 0;
}

