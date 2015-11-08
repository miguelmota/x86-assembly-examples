// main.cpp

// Calls the external LongRandom function, written in
// assembly language, that returns an unsigned 32-bit
// random integer. Compile in the Large memory model.

#include <iostream.h>

extern "C" unsigned long LongRandom();

const int ARRAY_SIZE = 500;

int main()
{
  // Allocate array storage and fill with 32-bit
  // unsigned random integers.
  unsigned long * rArray = new unsigned long[ARRAY_SIZE];
  for(unsigned i = 0; i < ARRAY_SIZE; i++)
  {
    rArray[i] = LongRandom();
    cout << rArray[i] << ',';
  }
  cout << endl;
  return 0;
}

