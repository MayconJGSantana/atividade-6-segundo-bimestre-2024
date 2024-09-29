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
	
	funcao inicio()
	{
		inteiro numeros
		inteiro numeros_pares = 0
		inteiro numeros_impares = 0
		inteiro i

		cabecalho(40, "Exercício 5")
		
		para (i = 1; i <= 5; i++) {
			escreva("-> Entre com um número: ")
			leia(numeros)
			se (numeros % 2 == 0) {
				numeros_pares++
			}
			senao {
				numeros_impares++
			}
		}
		
		aguarde(1000)
		pular_linha()
		
		escreva("Há ", numeros_pares, " números pares e ", numeros_impares, " números primos.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
