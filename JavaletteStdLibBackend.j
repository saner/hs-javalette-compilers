; oddzielny plik
; wbudowane funkcje

.method public static printInt(I)V
.limit stack 2
  getstatic  java/lang/System/out Ljava/io/PrintStream;
  iload 0
  invokevirtual  java/io/PrintStream/println(I)V
  return
.end method


.method public static printDouble(D)V
.limit stack 3
.limit locals 2

  getstatic  java/lang/System/out Ljava/io/PrintStream;
  dload 0
  invokevirtual  java/io/PrintStream/println(D)V
  return
.end method


.method public static printString(Ljava/lang/String;)V
.limit stack 2

  getstatic  java/lang/System/out Ljava/io/PrintStream;
  aload 0
  invokevirtual  java/io/PrintStream/println(Ljava/lang/String;)V
  return
.end method

.method public static readInt()I
.limit stack 6

  ;invokestatic  JavaletteStdLib/readInt()I
  ;ireturn

  new java/io/BufferedReader
  dup
  new java/io/InputStreamReader
  dup
  getstatic	java/lang/System.in Ljava/io/InputStream;
  invokespecial	java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
  invokespecial	java/io/BufferedReader/<init>(Ljava/io/Reader;)V
  invokevirtual	java/io/BufferedReader/readLine()Ljava/lang/String;

  invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
  ireturn

.end method

.method public static readDouble()D
.limit stack 5

  ;invokestatic  JavaletteStdLib/readDouble()D
  ;dreturn

  new java/io/BufferedReader
  dup
  new java/io/InputStreamReader
  dup
  getstatic java/lang/System.in Ljava/io/InputStream;
  invokespecial java/io/InputStreamReader/<init>(Ljava/io/InputStream;)V
  invokespecial java/io/BufferedReader/<init>(Ljava/io/Reader;)V
  invokevirtual	java/io/BufferedReader/readLine()Ljava/lang/String;
  invokestatic java/lang/Double/parseDouble(Ljava/lang/String;)D
  dreturn

.end method


.method public static error()V
.limit stack 2
  
  ;invokestatic  JavaletteStdLib/error()V
  ;return

  getstatic  java/lang/System/out Ljava/io/PrintStream;
  ldc "runtime error"
  invokevirtual  java/io/PrintStream/println(Ljava/lang/String;)V

  iconst_1
  invokestatic java/lang/System/exit(I)V

  return
.end method
