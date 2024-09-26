programa
{
	
	funcao inicio()
	{
		inteiro numero_anterior = 1
		inteiro numero_atual = 0
		inteiro idk
		
		escreva(numero_atual, " ")
		enquanto (nao (numero_atual > 500)) {
			idk = numero_atual
			numero_atual += numero_anterior
			numero_anterior = idk
			escreva(numero_atual, " ")
		}

		inteiro i
		inteiro quantidade_termos

		escreva("... ")
		numero_anterior = 1
		numero_atual = 0
		leia(quantidade_termos)
		escreva(numero_atual, " ")
		para (i = 1; i <= quantidade_termos; i++) {
			idk = numero_atual
			numero_atual += numero_anterior
			numero_anterior = idk
			escreva(numero_atual, " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 397; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */