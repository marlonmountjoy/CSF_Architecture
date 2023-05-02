#include <stdio.h>
int main() {
int count = 3;
int total = 0;
while (count != 0) {
total = total + count;
count = count - 1;
}
printf("sumTotal: %d\n", total);
}
