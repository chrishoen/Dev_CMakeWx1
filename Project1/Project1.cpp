
#include "stdafx.h"
#include <Windows.h>
#include <stdio.h>
#include "Project1.h"

int main()
{
   //aaa
   // Initialze winsock.
   WORD    Version = MAKEWORD(2, 2);
   WSADATA Data;
   WSAStartup(Version, &Data);

   // Press enter.
   printf("press enter\n");
   getchar();
	return 0;
}
