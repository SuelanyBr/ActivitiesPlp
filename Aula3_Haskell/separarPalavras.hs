separa :: String -> [String]
separa palavra = words palavra

imprime :: [String] -> [String] -> IO()
imprime [] [] = putStrLn("")
imprime (a:as) (b:bs) = do
	putStrLn(a ++ " " ++ b)
	(imprime as bs)

main = do
	linha1 <- getLine
	linha2 <- getLine
	
	imprime (separa linha1) (separa linha2)
	
	
