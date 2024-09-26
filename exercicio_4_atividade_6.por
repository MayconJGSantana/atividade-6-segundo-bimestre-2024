programa
{
	funcao inteiro potenciacao(inteiro base, inteiro expoente) {
		inteiro i
		inteiro resultado = 0
		
		para (i = 1; i <= expoente; i++) {
			se (i == 1) {
				resultado = base
			}
			senao {
				resultado = resultado * expoente
			}
		}
		retorne resultado
	}
	funcao inicio()
	{
		inteiro expoente
		inteiro base
		inteiro i
		inteiro resultado = 0

		escreva("expoente: ")
		leia(expoente)
		escreva("base: ")
		leia(base)
		para (i = 1; i <= expoente; i++) {
			se (i == 1) {
				resultado = base
			}
			senao {
				resultado = resultado * expoente
			}
		}
		escreva(resultado, " - ")

		escreva(potenciacao(base, expoente))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 605; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */