programa
{
	inclua biblioteca Texto
	inclua biblioteca Util

	funcao vazio espacos(inteiro quantidade_espacos) {
		para (inteiro i = 0; i < quantidade_espacos; i++) {
			escreva("=")
		}
		pular_linha()
	}
	
	funcao vazio cabecalho(inteiro quantidade_espacos, cadeia enunciado) {
		inteiro teste = 0
		espacos(quantidade_espacos)
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

	funcao vazio anos_chegada_habitantes(real cidadaos_a, real crescimento_vegetativo_a, real cidadaos_b, real crescimento_vegetativo_b, logico mostrar_cidadaos) {
		inteiro quantidade_anos = 0
		se (crescimento_vegetativo_a > crescimento_vegetativo_b) {
			enquanto (cidadaos_a <= cidadaos_b) {
				quantidade_anos++
				cidadaos_a = cidadaos_a * (crescimento_vegetativo_a / 100 + 1)
				cidadaos_b = cidadaos_b * (crescimento_vegetativo_b / 100 + 1)
				se (mostrar_cidadaos) {
					escreva(quantidade_anos + "° ano", " - ", "Cidadãos da A: " + cidadaos_a, " - ", "Cidadãos da B: " + cidadaos_b)
					pular_linha()
				}
			}
			aguarde(2000)
			pular_linha()
			escreva("Para a cidade A ultrapassar, em habitantes, a cidade B, será necessário " + quantidade_anos + " anos.")
		}
		senao se (crescimento_vegetativo_b > crescimento_vegetativo_a) {
			enquanto (cidadaos_a >= cidadaos_b) {
				quantidade_anos++
				cidadaos_a = cidadaos_a * (crescimento_vegetativo_a / 100 + 1)
				cidadaos_b = cidadaos_b * (crescimento_vegetativo_b / 100 + 1)
				se (mostrar_cidadaos) {
					escreva(quantidade_anos + "° ano", " - ", "Cidadãos da A: " + cidadaos_a, " - ", "Cidadãos da B: " + cidadaos_b)
					pular_linha()
				}
			}
			aguarde(2000)
			pular_linha()
			escreva("Para a cidade B ultrapassar, em habitantes, a cidade A, será necessário " + quantidade_anos + " anos.")
		}
		senao {
			escreva("O crescimento de ambas cidades é proporcional, portanto, nunca uma passará a outra em habitantes.")
		}
	}
	
	funcao inicio()
	{
		real cidadaos_a = 80000.0
		real crescimento_vegetativo_a = 3.0
		
		real cidadaos_b = 200000.0
		real crescimento_vegetativo_b = 1.5

		// caprichos
		logico aparecer_cidadaos
		logico deseja_continuar



		// exercício
		cabecalho(40, "Exercício 4")

		// entrada de variáveis
		aparecer_cidadaos = escolhe("Desejas que apareça a quantidade de cidadãos em ambas cidades durantes os anos")

		// resultado
		anos_chegada_habitantes(cidadaos_a, crescimento_vegetativo_a, cidadaos_b, crescimento_vegetativo_b, aparecer_cidadaos)



		// caprichos do programa
		enquanto (verdadeiro) {
			
			// entrada de variáveis
			pular_linha()
			aguarde(5000)
			pular_linha()
			
			deseja_continuar = escolhe("Desejas fazer um novo experimento")
			
			se (deseja_continuar) {
				limpa()

				// entrada de variáveis
				escreva("-> Entre com a quantidade de cidadãos na cidade A: ")
				leia(cidadaos_a)
				escreva("-> Entre com a taxa de aumento dos cidadãos da A: ")
				leia(crescimento_vegetativo_a)
				escreva("-> Entre com a quantidade de cidadãos na cidade B: ")
				leia(cidadaos_b)
				escreva("-> Entre com a taxa de aumento dos cidadãos da B: ")
				leia(crescimento_vegetativo_b)

				aguarde(1000)
				pular_linha()
				
				aparecer_cidadaos = escolhe("Desejas que apareça a quantidade de cidadãos em ambas cidades durantes os anos")

				// resultado
				aguarde(1000)
				pular_linha()
				
				anos_chegada_habitantes(cidadaos_a, crescimento_vegetativo_a, cidadaos_b, crescimento_vegetativo_b, aparecer_cidadaos)
				
			}
			senao {
				pare
			}
		}
		
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
