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

	funcao inteiro tempo_chegada(real cidadaos_a, real taxa_natalidade_a, real cidadaos_b, real taxa_natalidade_b, logico mostrar_cidadaos) {
		inteiro quantidade_anos = 0
		enquanto (cidadaos_a < cidadaos_b) {
			quantidade_anos++
			cidadaos_a = cidadaos_a * (taxa_natalidade_a / 100 + 1)
			cidadaos_b = cidadaos_b * (taxa_natalidade_b / 100 + 1)
			se (mostrar_cidadaos) {
				escreva(quantidade_anos + "° ano", " - ", "Cidadãos da A: " + cidadaos_a, " - ", "Cidadãos da B: " + cidadaos_b)
				pular_linha()
			}
		}
		retorne quantidade_anos
	}
	funcao inicio()
	{
		real cidadaos_a = 80000.0
		real taxa_natalidade_a = 3.0
		
		real cidadaos_b = 200000.0
		real taxa_natalidade_b = 1.5

		inteiro quantidade_anos = 0

		// caprichos
		logico aparecer_cidadaos

		// inicio do programa
		cabecalho(40, "Exercício 4")
		aparecer_cidadaos = escolhe("Desejas que apareça os cidadãos durantes os anos")
		quantidade_anos = tempo_chegada(cidadaos_a, taxa_natalidade_a, cidadaos_b, taxa_natalidade_b, aparecer_cidadaos)
		
		aguarde(2000)
		pular_linha()
		
		escreva("Para a cidade A de " + cidadaos_a + " habitantes ultrapassar em habitantes a cidade b, de " + cidadaos_b + " será necessário " + quantidade_anos + " anos.")
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
