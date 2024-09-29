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
	
	funcao inteiro potenciacao(inteiro base, inteiro expoente) {
		inteiro i
		inteiro resultado = 0
		
		para (i = 1; i <= expoente; i++) {
			se (i == 1) {
				resultado = base
			}
			senao {
				resultado = resultado * base
			}
		}
		retorne resultado
	}
	
	funcao inicio()
	{
		inteiro expoente
		inteiro base
		inteiro i
		inteiro resultado = 0

		cabecalho(40, "Exercício 4")
		escreva("-> Entre com o expoente: ")
		leia(expoente)
		escreva("-> Entre com a base: ")
		leia(base)
		para (i = 1; i <= expoente; i++) {
			se (i == 1) {
				resultado = base
			}
			senao {
				resultado = resultado * base
			}
		}

		aguarde(1000)
		pular_linha()
		
		escreva("A potência será ", resultado, " ou ", potenciacao(base, expoente))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 605; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
