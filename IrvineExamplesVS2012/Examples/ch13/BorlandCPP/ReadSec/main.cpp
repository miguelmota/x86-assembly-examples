// SectorMain.cpp -  Calls ReadSector Procedure

#include <iostream.h>
#include <conio.h>
#include <stdlib.h>

const int SECTOR_SIZE = 512;

extern "C" ReadSector( char * buffer, long startSector,
           int driveNum, int numSectors );

void DisplayBuffer( const char * buffer, long startSector,
     int numSectors )
{
  int n = 0;
  long last = startSector + numSectors;
  for(long sNum = startSector; sNum < last; sNum++)
  {
    cout << "\nSector " << sNum
         << " ---------------------------"
         << "-----------------------------\n";
    for(int i = 0; i < SECTOR_SIZE; i++)
    {
      char ch = buffer[n++];
      if( unsigned(ch) < 32 || unsigned(ch) > 126)
        cout << '.';
      else
        cout << ch;
    }
    cout << endl;
    getch();
  }
}

int main()
{
  char * buffer;
  long startSector;
  int driveNum;
  int numSectors;

  system("CLS");
  cout << "Sector display program.\n\n"
  << "Enter drive number [1=A, 2=B, 3=C, 4=D, 5=E,...]: ";
  cin >> driveNum;
  cout << "Starting sector number to read: ";
  cin >> startSector;
  cout << "Number of sectors to read: ";
  cin >> numSectors;
  buffer = new char[numSectors * SECTOR_SIZE];

  cout << "\n\nReading sectors " << startSector << " - "
       << (startSector + numSectors) << " from Drive "
       << driveNum << endl;

  ReadSector( buffer, startSector, driveNum, numSectors );
  DisplayBuffer( buffer, startSector, numSectors );

  system("CLS");
  return 0;
}
