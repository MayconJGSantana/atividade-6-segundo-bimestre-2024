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
		inteiro numero
		inteiro resultado
		inteiro i
		logico novo_teste

		cabecalho(40, "Exercício 7")
		enquanto (verdadeiro) {
			// declaração de variáveis
			
			escreva("-> Entre com um número: ")
			leia(numero)
			resultado = numero

			aguarde(1000)
			pular_linha()
			
			// calcular fatorial
			para (i = numero - 1; i > 0; i--) {
				escreva(resultado, " x ", i, " = ")
				resultado = resultado * i
				escreva(resultado)
				pular_linha()
			}

			aguarde(2000)
			pular_linha()
			
			escreva("O resultado do fatorial é ", resultado)

			pular_linha()
			aguarde(1000)
			pular_linha()
			
			// verificar novo_teste
			novo_teste = escolhe("Desejas fazer um novo teste")
			se (novo_teste) {
				aguarde(2000)
				pular_linha()
			}
			senao {
				pare
			}
		}
	}
}
