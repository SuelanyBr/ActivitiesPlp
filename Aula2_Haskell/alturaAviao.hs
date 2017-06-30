alturaAtual :: Int -> Int
alturaAtual alturaIdeal diferenca1 = do
	z <- getLine
	let altura = (read(z) :: Int)
	
	let diferenca2 = alturaIdeal - altura
	
	print (guarda diferenca1 diferenca2)
	
	print(guarda diferenca1 diferenca2 alturaIdeal)
	
guarda2 :: Int -> Int -> Int -> String
guarda2 diferenca1 diferenca2 altura | diferenca2 == diferenca1 = "ok"
								     | otherwise (alturaAtual altura diferenca2)
	
guarda :: Int -> Int -> String
guarda diferenca1 diferenca2 | diferenca2 < diferenca1 = "ADEQUADO"
						     | diferenca2 > diferenca1 = "PERIGO"



main = do  
   x <- getLine
   let alturaIdeal = (read(x) :: Int)
   
   y <- getLine
   let alturaAtual = (read(x) :: Int)
   
   let diferencaAtual = alturaIdeal - alturaAtual
   
   
   
