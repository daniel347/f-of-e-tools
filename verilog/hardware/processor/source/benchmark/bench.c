// Bubblesort benchmark
#include <stdio.h>
#include <stdint.h>
volatile unsigned int *gDebugLedsMemoryMappedRegister = (unsigned int *)0x2000;

void swap(int* xp, int* yp)
{
        int temp = *xp;
        *xp = *yp;
        *yp = temp;
}

// BUBBLESORT

void bubbleSort(int arr[], int n)
{
        int i, j;
        for (i = 0; i < n - 1; i++)


                for (j = 0; j < n - i - 1; j++)
                        if (arr[j] > arr[j + 1])
                                swap(&arr[j], &arr[j + 1]);
}

// MULTIPLY

int multiply( int x, int y )
{

 int i;
 int result = 0;

 for (i = 0; i < 32; i++) {
   if ((x & 0x1) == 1)
     result = result + y;
       
   x = x >> 1;
   y = y << 1;
 } 
 
 return result;

}

// MEDIAN

void median( int n, int input[], int results[] )
{
  int A, B, C, i;

  // Zero the ends
  results[0]   = 0;
  results[n-1] = 0;

  // Do the filter
  for ( i = 1; i < (n-1); i++ ) {

    A = input[i-1];
    B = input[i];
    C = input[i+1];

    if ( A < B ) {
      if ( B < C )
        results[i] = B;
      else if ( C < A )
        results[i] = A;
      else
        results[i] = C;
    }

    else {
      if ( A < C )
        results[i] = A;
      else if ( C < B )
        results[i] = B;
      else
        results[i] = C;
    }

  }

}

// TOWER OF HANOI

int counter = 0;
 
void move(int n, char src, char helper, char dest)
{
        //base case
        if(n == 0)
                return;
 
        //incrementing the counter
        counter++;
        //recursive case
        //move N - 1 disks to the helper
 
        move(n - 1, src, dest, helper);
        move(n - 1, helper, src, dest);
}

// MATRIX MULTIPLIER

#define R1 4            // number of rows in Matrix-1
#define C1 4            // number of columns in Matrix-1
#define R2 4            // number of rows in Matrix-2
#define C2 4            // number of columns in Matrix-2
 
void mulMat(int mat1[][C1], int mat2[][C2]) {
    int rslt[R1][C2];
 
    for (int i = 0; i < R1; i++) {
        for (int j = 0; j < C2; j++) {
            rslt[i][j] = 0;
 
            for (int k = 0; k < R2; k++) {
                rslt[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
    }
}


// MAIN

int main()
{
        int c = 0;
        while (1){
                int arr[] = {20, 80, 9, 64, 34, 25, 12, 22, 11, 90, 121, 121,  94,  99, 144};
                int n = sizeof(arr) / sizeof(arr[0]);
                bubbleSort(arr, n);
                
                
                // Uint8 conversion
                int coun = 0;
                while (coun < n) {
                    uint8_t y = arr[coun];
                    arr[coun] = y;
                    coun++;
                }

                // OR 
                int orCount = 1;
                int bool = 0;
                while (orCount < n) {
                    bool = (arr[orCount]>arr[orCount-1]) || (arr[orCount]==arr[orCount-1]);
                    orCount++;
                }
		arr[0] = bool;
                
                // Right Shift
                int rsCount = 1;
                int intermediate = 0;
                while (rsCount < n) {
                    intermediate = arr[rsCount] << 4;
                    rsCount++;
                }
		arr[0] = intermediate;

                
                // Left Shift
                int lsCount = 1;
                int inter = 0;
                while (lsCount < n) {
                    inter = arr[lsCount] >> 4;
                    lsCount++;
                }
		arr[0] = inter;
                
                // Multiplication
                multiply(88,79);
                
                // Median
                int test_arr[] = {20, 80, 9, 64, 34, 25, 12, 22, 11, 90, 121, 124, 94,  99, 144};
                int res[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
                int sz = sizeof(arr) / sizeof(arr[0]);
                median(sz,test_arr,res);
                
                // Tower of Hanoi
                int m = 3;
                move(m, 'A', 'C', 'B');

                // Matrix Multiplication
                int mat1[R1][C1] = {
                        {1, 1, 1, 1},
                        {2, 2, 2, 2},
                        {3, 3, 3, 3},
                        {4, 4, 4, 4}
                };
                int mat2[R2][C2] = {
                        {1, 1, 1, 1},
                        {2, 2, 2, 2},
                        {3, 3, 3, 3},
                        {4, 4, 4, 4}
                };
                mulMat(mat1, mat2);
                
                // Blink
                c++;
                if (c==500){
                        *gDebugLedsMemoryMappedRegister = 0xFF;
                }
                if (c==1000){
                        *gDebugLedsMemoryMappedRegister = 0x00;
                        c = 0;
                }

                 
                
        }
        return 0;
}
