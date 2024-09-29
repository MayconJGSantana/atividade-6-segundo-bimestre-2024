programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	
	funcao vazio espacos(inteiro quantidade_espacos) {
		// vai ser escrito "=" quantidade_espacos vezes
		para (inteiro i = 0; i < quantidade_espacos; i++) {
			escreva("=")
		}
		
		pular_linha()
	}
	
	funcao vazio cabecalho(inteiro quantidade_espacos, cadeia enunciado) {
		inteiro teste = 0
		espacos(quantidade_espacos)

		// vai colocar espaço até que quando escrito o enunciado fique no meio
		para (inteiro i = 0; i < quantidade_espacos / 2 - Texto.numero_caracteres(enunciado) / 2; i++) {
			escreva(" ")
		}
		escreva(enunciado)
		
		pular_linha()
		
		espacos(quantidade_espacos)
	}

	funcao vazio pular_linha() {
		escreva("\n")
	}
	
	funcao vazio pergunte(cadeia enunciado) {
		escreva("-> ", enunciado)
	}
	
	funcao vazio aguarde(inteiro tempo) {
		escreva("...")
		Util.aguarde(tempo)
	}

	funcao logico escolhe(cadeia enunciado) {
		cadeia deseja_continuar = ""
		escreva("-> ", enunciado, " [sim/nao]? ")
		leia(deseja_continuar)
		deseja_continuar  = Texto.caixa_baixa(deseja_continuar)

		se (deseja_continuar == "sim") {
			retorne verdadeiro
		}
		senao se (deseja_continuar == "nao" ou deseja_continuar == "não") {
			retorne falso
		}
		senao {
			escreva("Valor inválido, tente novamente!")
			pular_linha()
			retorne escolhe(enunciado)
		}
	}
	
	funcao inicio()
	{
		inteiro numero = 0
		inteiro maior_numero = 0
		inteiro menor_numero = 0
		inteiro soma = 0
		logico primeira_vez = verdadeiro
		logico continuar

		cabecalho(40, "Exercício 8")
		
		enquanto (verdadeiro) {
			enquanto (verdadeiro) {
				escreva("-> Entre com um número: ")
				leia(numero)
				se (numero <= 0 ou numero >= 1000) {
					escreva("Valor inválido, tente novamente!")
					pular_linha()
				}
				senao {
					pare
				}
			}
			
			soma += numero
			
			se (primeira_vez) {
				maior_numero = numero
				menor_numero = numero
				primeira_vez = falso
			}
			senao se (numero > maior_numero) {
				maior_numero = numero
			}
			senao se (numero < menor_numero) {
				menor_numero = numero
			}
 
			continuar = escolhe("Desejas continuar a escrever")
			se (nao continuar) {
				pare
			}
		}

		aguarde(2000)
		pular_linha()

		// resultado
		escreva("O maior número é ", maior_numero, " e o menor é ", menor_numero, "; já a soma é ", soma)
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
