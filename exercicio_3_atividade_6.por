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
	
	funcao vazio aguarde(inteiro tempo) {
		escreva("...")
		Util.aguarde(tempo)
	}

	funcao inicio()
	{
		inteiro numero
		inteiro maior_numero = 0
		inteiro i

		cabecalho(40, "Exercício 3")

		escreva("-> Entre com o número: ")
		leia(numero)
		maior_numero = numero
		
		para (i = 1; i <= 4; i++) {
			escreva("-> Entre com o número: ")
			leia(numero)
			se (numero > maior_numero) {
				maior_numero = numero
			}
		}
		aguarde(2000)
		escreva("\n", "O maior número encontrado foi: ", maior_numero)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 71; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
