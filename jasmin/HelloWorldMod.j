Classfile /workspace/CSF_Architecture/jasmin/HelloWorldMod.class
  Last modified May 5, 2023; size 394 bytes
  MD5 checksum 23866a7789a507d6620a43430184daeb
  Compiled from "HelloWorldMod.j"
public class HelloWorldMod
  minor version: 3
  major version: 45
  flags: (0x0021) ACC_PUBLIC, ACC_SUPER
  this_class: #4                          // HelloWorldMod
  super_class: #6                         // java/lang/Object
  interfaces: 0, fields: 0, methods: 2, attributes: 1
Constant pool:
   #1 = NameAndType        #23:#27        // out:Ljava/io/PrintStream;
   #2 = Utf8               ([Ljava/lang/String;)V
   #3 = Utf8               java/lang/Object
   #4 = Class              #18            // HelloWorldMod
   #5 = Utf8               <init>
   #6 = Class              #3             // java/lang/Object
   #7 = NameAndType        #5:#9          // "<init>":()V
   #8 = Class              #17            // java/io/PrintStream
   #9 = Utf8               ()V
  #10 = Utf8               Hello Neal from Jasmin!
  #11 = Class              #21            // java/lang/System
  #12 = Utf8               Code
  #13 = Utf8               main
  #14 = Fieldref           #11.#1         // java/lang/System.out:Ljava/io/PrintStream;
  #15 = Utf8               SourceFile
  #16 = NameAndType        #19:#26        // println:(Ljava/lang/String;)V
  #17 = Utf8               java/io/PrintStream
  #18 = Utf8               HelloWorldMod
  #19 = Utf8               println
  #20 = Methodref          #6.#7          // java/lang/Object."<init>":()V
  #21 = Utf8               java/lang/System
  #22 = Methodref          #8.#16         // java/io/PrintStream.println:(Ljava/lang/String;)V
  #23 = Utf8               out
  #24 = Utf8               HelloWorldMod.j
  #25 = String             #10            // Hello Neal from Jasmin!
  #26 = Utf8               (Ljava/lang/String;)V
  #27 = Utf8               Ljava/io/PrintStream;
{
  public HelloWorldMod();
    descriptor: ()V
    flags: (0x0001) ACC_PUBLIC
    Code:
      stack=1, locals=1, args_size=1
         0: aload_0
         1: invokespecial #20                 // Method java/lang/Object."<init>":()V
         4: return

  public static void main(java.lang.String[]);
    descriptor: ([Ljava/lang/String;)V
    flags: (0x0009) ACC_PUBLIC, ACC_STATIC
    Code:
      stack=10, locals=10, args_size=1
         0: getstatic     #14                 // Field java/lang/System.out:Ljava/io/PrintStream;
         3: ldc           #25                 // String Hello Neal from Jasmin!
         5: invokevirtual #22                 // Method java/io/PrintStream.println:(Ljava/lang/String;)V
         8: return
}
SourceFile: "HelloWorldMod.j"
