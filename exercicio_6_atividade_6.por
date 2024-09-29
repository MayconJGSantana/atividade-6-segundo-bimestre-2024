programa {

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

	funcao inteiro fazer_menu_dar_escolha(cadeia lista[]) {
		inteiro i
		inteiro opcao = 0
		// escreve um menu
		para (i = 0; i < Util.numero_elementos(lista); i++) {
			escreva("[", i + 1, "] ", lista[i])
			pular_linha()
		}

		// pede para escolher uma das opções e não aceita as inválidas
		enquanto (verdadeiro) {
			// entrada variáveis
			escreva("-> Escolha uma opção: ")
			leia(opcao)

			// validação da resposta
			se (opcao < 1 ou opcao > Util.numero_elementos(lista)) {
				escreva("Valor inválido, tente novamente!")
				pular_linha()
			}
			senao {
				pare
			}
		}
		retorne opcao
	}

	funcao inicio() {
		inteiro i
		inteiro quantidade_termos
		inteiro numero_anterior = 1
		inteiro numero_atual = 0
		inteiro numero_anterior_save
		cadeia alternativas_menu[] = {"Letra A", "Letra B"}
		inteiro escolha_menu_usuario
		logico novo_teste

		cabecalho(40, "Exercício 6")
		
		escolha_menu_usuario = fazer_menu_dar_escolha(alternativas_menu)

		aguarde(2000)
		limpa()
		
		cabecalho(40, alternativas_menu[escolha_menu_usuario - 1])
		
		se (escolha_menu_usuario == 1) {
			// enunciado
			escreva("Números da sequência Fibonacci até que ele seja maior que 500:")

			pular_linha()

			// resultado
			escreva(numero_atual, " ")
			enquanto (numero_atual < 500) {
				numero_anterior_save = numero_atual
				numero_atual += numero_anterior
				numero_anterior = numero_anterior_save
				escreva(numero_atual, " ")
			}
		}
		senao {
			enquanto (verdadeiro) {
				// declaração de variáveis
				numero_anterior = 1
				numero_atual = 0

				escreva("-> Quantos números queres que apareça de sequência de Fibonacci? ")
				leia(quantidade_termos)

				aguarde(1000)
				pular_linha()
				
				// resultado
				escreva(numero_atual, " ")
				para (i = 1; i < quantidade_termos; i++) {
					numero_anterior_save = numero_atual
					numero_atual += numero_anterior
					numero_anterior = numero_anterior_save
					escreva(numero_atual, " ")
				}

				pular_linha()
				aguarde(1000)
				pular_linha()
				
				novo_teste = escolhe("Desejas fazer um novo teste")
				se (nao novo_teste) {
					pare
				}
			}
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
