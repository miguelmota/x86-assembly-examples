#include <cstdio>

void MySub()
{
	char A = 'A';
	int B = 10;
	char name[20];
	name[0] = 'B';
	double c = 1.2;
}


int ArraySum( int array[], int count )
{
	int sum = 0;

	for(int i = 0; i < count; i++)
	  sum += array[i];
	
	return sum;
}


void main()
{
	int Array[50];

	int sum = ArraySum( Array, 50 );

}