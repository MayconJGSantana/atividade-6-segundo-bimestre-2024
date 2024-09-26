programa
{
	inclua biblioteca Texto

	funcao inicio()
	{
		inteiro numero
		inteiro maior_numero = 0
		inteiro menor_numero = 0
		inteiro i
		inteiro soma = 0
		inteiro quantidade_vezes
		cadeia deseja_continuar 

		enquanto (verdadeiro) {
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
			soma += numero
			enquanto (verdadeiro) {
				pergunte("Deseja continuar o programa [sim/nao]? ")
				leia(deseja_continuar)
				deseja_continuar  = Texto.caixa_baixa(deseja_continuar)
				se (deseja_continuar != "nao" e deseja_continuar != "sim" e deseja_continuar != "não") {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			se (deseja_continuar == "sim") {
				limpa()
			}
			senao {
				pare
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
