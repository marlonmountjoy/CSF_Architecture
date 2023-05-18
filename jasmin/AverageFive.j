; AverageFive jasmin program by Marlon Mountjoy

.class public AverageFive
.super java/lang/Object

.method public <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 5
    .limit locals 1

    ; push System.out onto the stack
    getstatic java/lang/System/out Ljava/io/PrintStream;

    ; push integers onto the stack and add them
    bipush 25
    bipush 18
    iadd
    bipush 5
    iadd
    bipush 8
    iadd
    bipush 22
    iadd

    ; convert the sum to a float
    i2f

    ; divide the sum by 5 to get the average
    ldc 5.0
    fdiv

    ; convert the float to string for printing
    invokestatic java/lang/Float/toString(F)Ljava/lang/String;

    ; call the PrintStream.println() method
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

    return
.end method
