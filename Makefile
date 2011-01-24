all: jvm-test tac-test


tac-test: GenTacTest.hs GenTac.hs SemanticChecking.hs JavaletteParser.hs JavaletteLexer.hs
	ghc --make GenTacTest.hs

tac: GenTacTest.hs GenTac.hs SemanticChecking.hs JavaletteParser.hs JavaletteLexer.hs
	ghc --make GenTac.hs

jvm-test: JVMCompilerTest.hs JVMCompiler.hs SemanticChecking.hs JavaletteParser.hs JavaletteLexer.hs
	ghc --make JVMCompilerTest.hs

semantic-test: SemanticChecking.hs JavaletteParser.hs JavaletteLexer.hs
	ghc --make SemanticCheckingTest.hs

semantic: SemanticChecking.hs JavaletteParser.hs JavaletteLexer.hs
	ghc --make SemanticChecking.hs

parser-test: JavaletteParser.hs JavaletteLexer.hs
	ghc --make JavaletteParserTest.hs

parser: JavaletteParser.y JavaletteLexer.hs
	happy JavaletteParser.y

lexer-test: JavaletteLexer.hs
	ghc --make JavaletteLexerTest.hs

lexer: JavaletteLexer.x
	alex JavaletteLexer.x
	ghc --make JavaletteLexer.hs

clean:
	-rm -f *.hi *.o *~

