# 1 "insertion.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "insertion.c"
# 1 "insertion.h" 1



void InsertionSort(int n, unsigned array[]);
# 2 "insertion.c" 2

void InsertionSort(int n, unsigned array[]) {

    int itemToInsert, location;

    for (int i = 1; i < n; i++)
    {
        itemToInsert = array[i];
        location = i - 1;
        while(location >= 0 && array[location] > itemToInsert)
        {
            array[location+1] = array[location];
            location = location - 1;
        }
        array[location+1] = itemToInsert;
    }
}
