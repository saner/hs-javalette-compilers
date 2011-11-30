#include <stdio.h>


void printInt(int i)
{
	printf("%d \n", i);

	return;
}

void printDouble(double d)
{
	printf("%.1f \n", d);

	return;
}

void printString(char* c)
{
	puts(c);

	return;
}

int readInt()
{
	int ret;
	scanf("%d", &ret);
	return ret;
}

double readDouble()
{
	double d;
	scanf("%lf", &d);
	return d;
}

