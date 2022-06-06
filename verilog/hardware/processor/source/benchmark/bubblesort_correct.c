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
        for (i = 0; i < n; i++){


                for (j = 0; j < n-1; j++){
                        if (arr[j] > arr[j + 1]){
                                swap(&arr[j], &arr[j + 1]);
		}
		}
	}
}

int main()
{
        int j,count = 0;
	int correct[] = {9, 11, 12, 20, 22, 25, 34, 64, 80, 90, 94, 99, 121, 124, 144};
        while (1){
                int arr[] = {20, 80, 9, 64, 34, 25, 12, 22, 11, 90, 121, 124,  94,  99, 144};
                int n = sizeof(arr)/sizeof(arr[0]);
                bubbleSort(arr, n);
                for (j = 0; j < n; j++){

                        if (arr[j] == correct[j]){
                        	count++;
                        }
					
                }
		if (count == n){
			count = 0;
			*gDebugLedsMemoryMappedRegister = 0xFF;
		}
		else{
			count = 0;
			*gDebugLedsMemoryMappedRegister = 0x00;

		}

		
        }

        return 0;
}
