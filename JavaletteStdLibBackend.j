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
.limit stack 2

  invokestatic  JavaletteStdLib/readInt()I
  ireturn
.end method

.method public static readDouble()D
.limit stack 3

  invokestatic  JavaletteStdLib/readDouble()D
  dreturn
.end method


.method public static error()V
.limit stack 3

  invokestatic  JavaletteStdLib/error()V
  return
.end method
