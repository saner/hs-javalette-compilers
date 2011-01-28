module Main where

import System
import System.Console.GetOpt
import Prelude
import Control.Monad
import Control.Monad.State
import System.IO.Unsafe

import Data.List
import qualified Data.Map as Map

import JavaletteLexer
import JavaletteParser
import SemanticChecking
import X86Compiler

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
		

getProgInfo :: String -> (Bool,String,String,String)
getProgInfo file =
    let posDs = (head (take 1 (elemIndices '.' file)))
        posSs = (elemIndices '/' file)
        fileName = (take posDs file) ++ ".s"
        progName = case length posSs of
						0 -> (take posDs file) 
						_ ->
							let posSlast = (head (drop ((length posSs) -1) posSs))
							in (drop (posSlast + 1) (take posDs file))
    in (True,fileName,progName, unsafePerformIO (readFile file))

main = do
	args <- getArgs
	let (toFile,fileName,progName,sourceCode) = 
					case length args of
							0 -> (False,"","ProgTest", unsafePerformIO getContents)
							1 -> getProgInfo (head args)

	--putStrLn "----------------------------------------"
	--putStrLn "\t Javalette"
	--putStrLn "----------------------------------------"
	--putStr sourceCode
	--putStr $ "//-------" ++ fileName ++ "+++++++" ++ progName ++ "\n"
	case (javaletteLex sourceCode) of
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
							let programCode = compileProgram parseTree
							case toFile of
								False -> putStrLn programCode
								True -> writeFile fileName programCode
						else printMessages messages
