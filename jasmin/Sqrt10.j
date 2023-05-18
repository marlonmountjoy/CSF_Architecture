.class public Sqrt10
.super java/lang/Object

; standard initializer
.method public <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 4
    .limit locals 2

    ; push System.out onto the stack
    getstatic java/lang/System.out Ljava/io/PrintStream;

    ; push the double 10.0 onto the stack
    ldc2_w 10.0

    ; call the java.lang.Math.sqrt() method.
    invokestatic java/lang/Math/sqrt(D)D

    ; Convert the double result to a string for printing
    invokestatic java/lang/Double/toString(D)Ljava/lang/String;

    ; call the PrintStream.println() method.
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

    ; done
    return
.end method
