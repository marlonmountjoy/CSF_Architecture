.class public Dist
.super java/lang/Object

; standard initializer
.method public <init>()V
aload_0
invokespecial java/lang/Object/<init>()V
return
.end method

.method public static dist(II)D
.limit stack 5
.limit locals 2

; load the two integer arguments onto the stack
iload_0
iload_0

; square the first argument
imul
i2d ; convert the integer to a double

; load the second argument onto the stack and square it
iload_1
iload_1
imul
i2d ; convert the integer to a double

; add the squares together
dadd

; calculate the square root of the sum
invokestatic java/lang/Math/sqrt(D)D
dreturn
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 4
.limit locals 3

; load the first and second command line arguments into local variables
aload_0
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore_1

aload_0
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore_2

; call the dist function and print the result
getstatic java/lang/System/out Ljava/io/PrintStream;
iload_1
iload_2
invokestatic Dist/dist(II)D
invokevirtual java/io/PrintStream/println(D)V
return
.end method
