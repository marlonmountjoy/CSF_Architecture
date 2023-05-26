.class public SumIntTwo
.super java/lang/Object

; standard initializer
.method public <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 2 

    ; Load the first command line argument into local variable 1
    aload_0
    iconst_0
    aaload
    invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
    istore_1

    ; If n is less than 0, just print 0 and return
    iload_1
    iflt PrintZero
    
    ; Calculate n * (n + 1)
    iload_1
    iload_1
    iconst_1
    iadd
    imul
    ; Divide the result by 2
    iconst_2
    idiv
    ; Store the result back into local variable 1
    istore_1

PrintZero:
    ; Print the sum
    getstatic java/lang/System/out Ljava/io/PrintStream;
    iload_1
    invokevirtual java/io/PrintStream/println(I)V

    return
.end method
