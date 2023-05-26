; this program prints the length of a hardcoded string "Hello World from Jasmin"
 
.class public StrLenHello
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 2
   .limit locals 1

   ; push "Hello World from Jasmin" onto the stack
   ldc "Hello World from Jasmin"

   ; call length method on the string to get its length
   invokevirtual java/lang/String/length()I

   ; get System.out to print
   getstatic java/lang/System/out Ljava/io/PrintStream;

   ; swap the top two elements on the stack in order to get System.out on top of the stack 
   swap                 ;  ,,, this took me a bit to debug haha !!!!

   ; Print the length
   invokevirtual java/io/PrintStream/println(I)V

   ; done
   return
.end method
