programa
{
	
	funcao inicio()
	{
		inteiro numeros
		inteiro numeros_pares = 0
		inteiro numeros_impares = 0
		inteiro i
		
		para (i = 1; i <= 5; i++) {
			escreva("Blabla: ")
			leia(numeros)
			se (numeros % 2 == 0) {
				numeros_pares++
			}
			senao {
				numeros_impares++
			}
		}
		escreva(numeros_pares, " - ", numeros_impares)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */