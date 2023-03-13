#include <stdio.h>

int main()
{
	int a,b;
	
	writef("Hi, My name is yathish.....");
	writef("\nEnter the two numbers to perform sum operation: ");
	readf("%d%d",&a,&b);
	
	writef("The sum of the two numbers: %d\n",a+b);
	return 0;
}
