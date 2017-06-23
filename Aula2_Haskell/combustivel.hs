preco_alcool :: Double -> Double -> Double
preco_alcool x y = x*y

preco_gasolina :: Double -> Double -> Double
preco_gasolina x y = x*y

guarda :: Double -> Double -> Double
guarda alcool gasolina
	| (alcool >= (gasolina * 0.7)) = gasolina
	| (alcool < (gasolina * 0.7)) = alcool

main = do
	x <- getLine
	y <- getLine
	z <- getLine
	
	let alcool = (read(x) :: Double)
	let gasolina = (read(y) :: Double)
	let qtde = (read(z) :: Double)
	
	let total_alcool = preco_alcool qtde alcool 
	let total_gasolina = preco_gasolina qtde gasolina
	
	print (guarda total_alcool total_gasolina)
	
	
	
