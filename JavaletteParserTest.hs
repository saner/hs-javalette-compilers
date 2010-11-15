module Main where

import JavaletteLexer
import JavaletteParser


main = do 
	inStr <- getContents 
	let parseTree = javaletteParse (alexScanTokens inStr) 
	putStrLn ("parseTree:" ++ show(parseTree)) 
	print "done" 

