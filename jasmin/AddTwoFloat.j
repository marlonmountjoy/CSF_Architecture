; AddTwoFloat jasmin program by Marlon Mountjoy

.class public AddTwoFloat
.super java/lang/Object

.method public <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 3
    .limit locals 1

    ; push System.out onto the stack
    getstatic java/lang/System/out Ljava/io/PrintStream;

    ; push two float constants onto the stack
    ldc 7.54
    ldc 3.14159

    ; add the two floats
    fadd

    ; convert the float to string for printing
    invokestatic java/lang/Float/toString(F)Ljava/lang/String;

    ; call the PrintStream.println() method
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

    return
.end method
