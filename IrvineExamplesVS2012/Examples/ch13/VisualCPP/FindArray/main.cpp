// main.cpp - Testing FindArray and AsmFindArray.

// Tested 12/19/2012 on a Duo-Core Pentium:
// CPP - 9 seconds
// ASM - 12 seconds

#include <iostream>
#include <time.h>
#include "findarr.h"
using namespace std;

int main()
{
	// Fill an array with pseudorandom integers.
	const unsigned ARRAY_SIZE = 10000; 
	const unsigned LOOP_SIZE = 1000000;

	long array[ARRAY_SIZE]; 
	for(unsigned i = 0; i < ARRAY_SIZE; i++)
     array[i] = rand();

	long searchVal;
	time_t startTime, endTime;
	cout << "Enter value to find: ";
	cin >> searchVal;
	cout << "Please wait. This will take between 10 and 30 seconds...\n";


// Test the C++ function:

	time( &startTime );
	bool found = false;

	for( int n = 0; n < LOOP_SIZE; n++)
		found = FindArray( searchVal, array, ARRAY_SIZE );

	time( &endTime );
	cout << "Elapsed CPP time: " << long(endTime - startTime) 
		<< " seconds. Found = " << found << endl;

// Test the Assembly language procedure:

	time( &startTime );
	found = false;

	for( int n = 0; n < LOOP_SIZE; n++)
		found = AsmFindArray( searchVal, array, ARRAY_SIZE );

	time( &endTime );
	cout << "Elapsed ASM time: " << long(endTime - startTime) 
		  << " seconds. Found = " << found << endl;

	getchar();
	return 0;
}