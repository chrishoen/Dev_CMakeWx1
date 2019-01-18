#include "stdafx.h"
#include <cstdio>

#include "MyClass1.h"
#include "MyFunction1.h"

int main(int argc, char** argv)
{
   printf("main\n");
   MyClass1 tMyClass1;
   tMyClass1.doSomething();
   doMyFunction1();
   return 0;
}