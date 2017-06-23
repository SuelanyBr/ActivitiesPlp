main = do
	input <- getLine
	print(guarda input)


guarda :: String -> Int
guarda automovel 
	| (automovel == "moto") = 5
	| (automovel == "carro") = 10
	| otherwise = 30
