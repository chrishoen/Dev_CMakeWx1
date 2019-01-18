#include "stdafx.h"
#include <Windows.h>
#include <cstdio>

#include "MyClass1.h"
#include "MyFunction1.h"

int main(int argc, char** argv)
{
   // Initialze winsock.
   WORD    Version = MAKEWORD(2, 2);
   WSADATA Data;
   WSAStartup(Version, &Data);

   printf("main\n");
   MyClass1 tMyClass1;
   tMyClass1.doSomething();
   doMyFunction1();

   // Press enter.
   printf("press enter\n");
   getchar();
   return 0;
}