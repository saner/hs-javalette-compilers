module Main where

import JavaletteLexer
import JavaletteParser


main = do 
	str <- getContents 
	case (javaletteLex str) of
		Left l -> putStrLn $ "wystapil blad: " ++ l
		Right r ->  do
			let parseTree = javaletteParse r
			putStrLn ("parseTree:" ++ show(parseTree)) 
			print "done" 
