programa
{
	
	funcao inicio()
	{
		inteiro cidadaos_a = 80000
		real taxa_natalidade_a = 3.0
		
		inteiro cidadaos_b = 200000
		real taxa_natalidade_b = 1.5

		inteiro quantidade_anos = 0

		enquanto (verdadeiro) {
			quantidade_anos++
			cidadaos_a = cidadaos_a * 1.03
			cidadaos_b = cidadaos_b * 1.015
			escreva(cidadaos_a, " - ", cidadaos_b, "\n")
			se (cidadaos_b <= cidadaos_a) {
				pare
			}
		}
		escreva(quantidade_anos)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */