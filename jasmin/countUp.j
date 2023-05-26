.class public countUp
.super java/lang/Object

; Standard initializer
.method public <init>()V
aload_0
invokespecial java/lang/Object/<init>()V
return
.end method

; Main method
.method public static main([Ljava/lang/String;)V
.limit stack 2
.limit locals 2

; Load the first command line argument into local variable 1
aload_0
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore_1

; Load 0 into local variable 2, which will serve as the counter
iconst_0
istore_2

Loop:

; Print the current value of the counter
getstatic java/lang/System/out Ljava/io/PrintStream;
iload_2
invokevirtual java/io/PrintStream/println(I)V

; Increment the counter
iinc 2 1

; If the counter is less than or equal to the first command line argument, jump back to the start of the loop
iload_2
iload_1
if_icmple Loop
return
.end method