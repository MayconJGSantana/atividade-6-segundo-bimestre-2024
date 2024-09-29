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
	
	funcao inicio()
	{
		// declaração de variáveis
		inteiro numeros
		inteiro i
		inteiro soma = 0
		real media
		real quantidade_numeros = 0.0

		cabecalho(40, "Exercício 2")
		para (i = 1; i <= 5; i++) {
			escreva("-> Entre com o número: ")
			leia(numeros)
			soma += numeros
			quantidade_numeros += 1
		}
		media = soma / quantidade_numeros

		aguarde(2000)
		pular_linha()
		
		escreva("A soma dos números será ", soma, " e a média ", media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 119; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
