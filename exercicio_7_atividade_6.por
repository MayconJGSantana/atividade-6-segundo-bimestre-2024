programa
{
	
	funcao inicio()
	{
		inteiro numero
		inteiro resultado = 1
		inteiro i
		
		escreva("... ")
		leia(numero)

		para (i = numero; i > 0; i--) {
			escreva(resultado, " x ", i, " = ")
			resultado = resultado * i
			escreva(resultado, "\n")
		}
		escreva(resultado)
	}
}
