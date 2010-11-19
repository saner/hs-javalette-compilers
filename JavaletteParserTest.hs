module Main where

import JavaletteLexer
import JavaletteParser


main = do 
	str <- getContents 
	case (javaletteLex str) of
		Left l -> putStrLn $ "wystapil blad: " ++ l
		Right (tokens, errors) ->  do
			if (length errors) > 0
				then putStrLn $ "Sa bledy " ++ show(errors)
				else do
					let parseTree = javaletteParse tokens
					putStrLn ("parseTree:" ++ show(parseTree)) 
					print "done" 
