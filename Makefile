all:
	ghc --make JVMCompilerTest.hs

parser: lexer
	happy JavaletteParser.y

lexer:
	alex JavaletteLexer.x

clean:
	-rm -f *.hi *.o *.*~

