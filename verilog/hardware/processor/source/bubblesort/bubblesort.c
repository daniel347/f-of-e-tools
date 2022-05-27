// Bubblesort benchmark
#include <stdio.h>
volatile unsigned int *gDebugLedsMemoryMappedRegister = (unsigned int *)0x2000;

void swap(int* xp, int* yp)
{
	int temp = *xp;
	*xp = *yp;
	*yp = temp;
}

void bubbleSort(int arr[], int n)
{
	int i, j;
	for (i = 0; i < n - 1; i++)
		for (j = 0; j < n - i - 1; j++)
			if (arr[j] > arr[j + 1])
				swap(&arr[j], &arr[j + 1]);
}

int main()
{
	int c = 0;
	while (1){
		int arr[] = { 20, 80, 9, 64, 34, 25, 12, 22, 11, 90, 121, 124};
		int n = sizeof(arr) / sizeof(arr[0]);
		bubbleSort(arr, n);
		c++;
		if (c==1000){
			*gDebugLedsMemoryMappedRegister = 0xFF;
		}
		if (c==2000){
			*gDebugLedsMemoryMappedRegister = 0x00;
			c = 0;
		}	
	
	}
	return 0;
}
