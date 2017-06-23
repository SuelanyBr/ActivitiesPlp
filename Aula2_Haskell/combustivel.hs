preco_alcool :: Int -> Double -> Double
preco_alcool x y = x*y

preco_gasolina :: Int -> Double -> Double
preco_gasolina x y = x*y

guarda :: Double -> Double -> Double
guarda alcool gasolina
	| (alcool >= (gasolina * 0.7)) = gasolina
	| (alcool < (gasolina * 0.7)) = alcool

main = do
	x <- getline
	y <- getline
	qtde_litros <- getline
	
	
	total_alcool = preco_alcool qtde_litros x 
	total_gasolina = preco_gasolina qtde_litros y
	
	print (guarda total_alcool total_gasolina)
	
	
	
