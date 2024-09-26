programa
{
	
	funcao inicio()
	{
		inteiro numero
		inteiro maior_numero = 0
		inteiro menor_numero = 0
		inteiro i
		inteiro soma	
		
		para (i = 1; i <= 5; i++) {
			escreva("Blablabla: ")
			leia(numero)
			se (i == 1) {
				maior_numero = numero
				menor_numero = numero
			}
			senao se (numero > maior_numero) {
				maior_numero = numero
			}
			senao {
				menor_numero = numero
			}
		}
		escreva(maior_numero, " - ", menor_numero, " - ", soma)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 131; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */