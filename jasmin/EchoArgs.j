; EchoArgs Jasmin program: Echoes all command line arguments to the console
.class public EchoArgs
.super java/lang/Object

; standard initializer
.method public <init>()V
aload_0
invokespecial java/lang/Object/<init>()V
return
.end method

; main method
.method public static main([Ljava/lang/String;)V
.limit stack 3
.limit locals 3 ; We need an extra local for the loop counter

; load the args array onto the stack and get its length
aload_0
arraylength
istore_1 ; store the length of the array in the first local variable

; Begin a loop to echo each command line argument
iconst_0
istore 2 ; initialize the loop counter

Loop_start:
iload 2 ; load the loop counter onto the stack
iload_1 ; load the length of the array onto the stack
if_icmpge Loop_end ; if counter >= length, end the loop

; Print the current argument
getstatic java/lang/System.out Ljava/io/PrintStream;
aload_0
iload 2
aaload
invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
 
; increment the loop counter and repeat the loop
iinc 2 1
goto Loop_start
Loop_end:
; Done
return
.end method
