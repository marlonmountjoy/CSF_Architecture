; program that takes two hardcoded values -8 and 3, compares them and prints the maximum one
 
.class public MaxintMinus8and3
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 3
   .limit locals 1

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

   ; push two hardcoded int values onto the stack
   bipush -8
   bipush 3

   ; call max method to find the maximum of the two integers
   invokestatic MaxintMinus8and3/max(II)I

   ; print the result
   invokevirtual java/io/PrintStream.println(I)V

   ; done
   return
.end method

.method public static max(II)I ; max method
   .limit stack 2
   .limit locals 2

   ; Compare two ints
   iload_0
   iload_1
   if_icmple Label

   ; If the first int is greater, return it
   iload_0
   ireturn
Label:

   ; Otherwise, return the second int
   iload_1
   ireturn
.end method
