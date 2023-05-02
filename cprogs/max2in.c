#include <stdio.h>
#include <stdlib.h>
// ./max2in int int
int main(int n, char* args[]) {
int num1, num2, max;
if (n != 3) {
printf("Usage: ./max2in int int\n");
return 1;
}
num1 = atoi(args[1]);
num2 = atoi(args[2]);
if (num1 >= num2) max = num1; else max = num2;
printf("addTwo of %d and %d is: %d\n", num1, num2, max);
}
