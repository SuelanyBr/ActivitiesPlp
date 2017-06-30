separa :: String -> String
separa (a:as)
	| (as == "") = 

main = do
	palavra1 <- getLine
	palavra2 <- getLine
	palavra3 <- getLine
	palavra4 <- getLine
	palavra5 <- getLine
	
	print(separa palavra1)
