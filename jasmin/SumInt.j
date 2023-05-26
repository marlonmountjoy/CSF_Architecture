.class public SumInt
.super java/lang/Object

; Standard initializer
.method public <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 4

    ; Load the first command line argument into local variable 1
    aload_0
    iconst_0
    aaload
    invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
    istore_1

    ; Load 0 into local variable 2. Variable 2 will be the sum
    iconst_0
    istore_2

    ; Loop from 0 to n (stored in local variable 1)
    iconst_0
    istore_3 ; loop counter (local variable 3)
Label1:
    iload_3
    iload_1
    if_icmpge Label2 ; if counter >= n, jump to Label2

    ; Compute sum
    iload_2
    iload_3
    iadd
    istore_2 ; update sum

    ; Increment counter
    iinc 3 1
    goto Label1
Label2:

    ; Print the sum
    getstatic java/lang/System/out Ljava/io/PrintStream;
    iload_2
    invokevirtual java/io/PrintStream/println(I)V

    return
.end method
