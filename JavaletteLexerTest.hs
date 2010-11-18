module Main where

import JavaletteLexer

main = do
	s <- getContents
	print $ javaletteLex s
