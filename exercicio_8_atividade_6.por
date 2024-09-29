programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	
	funcao vazio espacos(inteiro quantidade_espacos) {
		para (inteiro i = 0; i < quantidade_espacos; i++) {
			escreva("=")
		}
		escreva("\n")
	}
	
	funcao vazio cabecalho(inteiro quantidade_espacos, cadeia enunciado) {
		inteiro teste = 0
		espacos(quantidade_espacos)
		para (inteiro i = 0; i < quantidade_espacos / 2 - Texto.numero_caracteres(enunciado) / 2; i++) {
			escreva(" ")
		}
		escreva(enunciado, "\n")
		espacos(quantidade_espacos)
	}
	
	funcao vazio pergunte(cadeia enunciado) {
		escreva("-> ", enunciado)
	}
	
	funcao vazio aguarde(inteiro tempo) {
		escreva("\n...\n")
		Util.aguarde(tempo)
	}
	
	funcao inicio()
	{
		inteiro numero
		inteiro maior_numero = 0
		inteiro menor_numero = 0
		inteiro soma = 0
		inteiro quantidade_vezes

		// caprichos
		cadeia deseja_continuar = ""
		
		escreva("Entre com um número: ")
		leia(numero)
		maior_numero = numero
		menor_numero = numero

		enquanto (verdadeiro) {
			escreva("Entre com um número: ")
			leia(numero)
			se (numero > maior_numero) {
				maior_numero = numero
			}
			senao {
				menor_numero = numero
			}
			soma += numero
			enquanto (verdadeiro) {
				pergunte("Desejas continuar o programa [sim/nao]? ")
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
