module Main where


import Prelude
import Control.Monad
import Control.Monad.State

import qualified Data.Map as Map

import JavaletteLexer
import JavaletteParser
import SemanticChecking
import JVMCompiler


{-
testAddingWarnings = do
	let state = ([Map.empty], [])
	let m = Warning "hej" (1,1)
	let endState = execState ( (addMessage m) >> (addMessage m)) state
	putStrLn $ show endState

testAddFindSymbol = do
	let state = ([Map.empty], [])
	let s = VarSymbol "Start" TypeInt
	let endState = evalState ( (addSymbol s) >> (addSymbol s) >> (findIdentSymbol "Start")) state
	putStrLn $ show endState

testPushPopSymbolTable = do
	let state = ([Map.empty], [])
	let s = VarSymbol "Start" TypeInt
	let t = VarSymbol "Start" TypeBoolean
	let endState = execState ( pushEmptySymbolTable >> (addSymbol t) >> pushEmptySymbolTable >> (addSymbol s) >> (addSymbol s) >> (findIdentSymbol "Start")) state

	putStrLn $ show endState

		-}
printMessages messages = do
	let warnings = filter (\m -> case m of Warning _ _ -> True; Error _ _ -> False) messages
	let errors = filter (\m -> case m of Warning _ _ -> False; Error _ _ -> True) messages
	putStrLn "--------------------"
	putStrLn "Warningi:"
	--mapM_ print warnings
	mapM_ (\(Warning s (l,c)) -> putStrLn $ "Linia " ++ (show l) ++ ", kolumna: " ++ (show c) ++ ": " ++ s) warnings
	putStrLn "--------------------"
	putStrLn "Errory:"
	mapM_ (\(Error s (l,c)) -> putStrLn $ "Linia " ++ (show l) ++ ", kolumna: " ++ (show c) ++ ": " ++ s) errors
	putStrLn "--------------------"
		

main = do
	str <- getContents 
	--putStrLn "----------------------------------------"
	--putStrLn "\t Javalette"
	--putStrLn "----------------------------------------"
	case (javaletteLex str) of
		Left l -> putStrLn $ "Lexer: wystapil blad: " ++ l
		Right (tokens, errors) ->  do
			if (length errors) > 0
				then  putStrLn $ "Bledy leksykalne: " ++ show(errors)
				else do
					let parseTree = javaletteParse tokens
					--putStrLn $ "Parser: Nie ma bledow " ++ ("parseTree:" ++ show(parseTree)) 
					
					-- odpalenie sprawdzenia typow
					let (state, messages) = execState (checkProgram parseTree) ([],[])
					if (length messages) == 0
						then do
							let programCode = evalState (compileProgram "ProgTest" parseTree) ("ProgTest", 0, Map.empty, [])
							putStrLn programCode
						else printMessages messages
