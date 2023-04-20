#include <stdio.h>  //include standard io library for print and scan
//function named hailstone that takes an int called n as input and generates the hailstone sequence and returns the length 
unsigned long hailstone(unsigned long n) { 
    unsigned long length = 0; //create variable for length and set to 0
    while (n != 1) { //until n is 1 print n, if n is even n equals half of n, otherwise n is odd so n equals three times n plus 1
        printf("%lu ", n);
        if (n % 2 == 0) {
            n = n / 2;
        } else {
            n = 3 * n + 1;
        }
        length++; //increment length
    }
    printf("1\n"); //print the final 1 followed by a new line
    return length; //returns the length of the sequence
}

int main() {
    unsigned long n; //variable n for the input number
    printf("Enter a positive integer: "); //prompt for user to enter the number n
    scanf("%lu", &n); //read the integer from the user and store it in n

    unsigned long length = hailstone(n); //call the hailstone function with the input variable n and then store the return in length
    printf("The length of the hailstone sequence is: %lu\n", length + 1); //print the length 

    return 0; //success exit program
}
