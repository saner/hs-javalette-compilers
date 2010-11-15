module Main where

import JavaletteLexer
import JavaletteParser


main = do 
	inStr <- getContents 
	let parseTree = javaletterParse (alexScanTokens inStr) 
	putStrLn ("parseTree:" ++ show(parseTree)) 
	print "done" 

