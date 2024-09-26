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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */