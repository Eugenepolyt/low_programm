#include "stdio.h"
#include "insertion.h"
int main() {
    unsigned array[10] = {1, 5, 4, 6, 2, 3, 7, 9, 8, 10};
    printf("Source array:\n");
    for (int i = 0; i < 10; ++i){
        printf("%d ", array[i]);
    }
    InsertionSort(10, array);
    printf("\nSorted array:\n");
    for (int i = 0; i < 10; ++i){
        printf("%d ", array[i]);
    }
    return 0;
}
