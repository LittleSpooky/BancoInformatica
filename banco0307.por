programa
{
	
inclua biblioteca Util --> u
	funcao inicio()
	{
		//Declaração de variáveis
		inteiro inte = 1000, repeticao = 0
		real extrato = 0.16, saque = 0.0, deposito = 0.0
		cadeia extratoSaida = "", control, pswd = "", senha = "1505", nome = ""

		//Menu
		enquanto(inte != 0){
			enquanto(pswd != senha){
				escreva("|		Login\n")
				escreva("\n|	Nome: ")
				leia(nome)
				limpa()
				escreva("|	Senha: ")
				leia(pswd)
				se(pswd != senha){
					limpa()
					escreva("|		Erro\n")
					escreva("\n|	Senha incorreta.\n")
					escreva("|	Aguarde.")
					u.aguarde(1000)
					limpa()
					escreva("|		Erro\n")
					escreva("\n|	Senha incorreta.\n")
					escreva("|	Aguarde..")
					u.aguarde(1000)
					limpa()
					escreva("|		Erro\n")
					escreva("\n|	Senha incorreta.\n")
					escreva("|	Aguarde...")
					u.aguarde(1000)
				}
				limpa()
			}
			escreva("|		Menu\n|")
			escreva("\n|	Saldo. R$", extrato, "\n|")
			escreva("\n|	1- Saque\n")
			escreva("|	2- Deposito\n")
			escreva("|	3- Extrato\n")
			escreva("|	0- Sair")
			escreva("\n|	:")
			leia(inte)
			limpa()
			escolha(inte){
				caso 1:
					pswd = ""
					enquanto(pswd != senha){
						escreva("|		Login\n")
						escreva("|	Senha: ")
						leia(pswd)
						se(pswd != senha){
							limpa()
							escreva("|		Erro\n")
							escreva("\n|	Senha incorreta.\n")
							escreva("|	Aguarde.")
							u.aguarde(1000)
							limpa()
							escreva("|		Erro\n")
							escreva("\n|	Senha incorreta.\n")
							escreva("|	Aguarde..")
							u.aguarde(1000)
							limpa()
							escreva("|		Erro\n")
							escreva("\n|	Senha incorreta.\n")
							escreva("|	Aguarde...")
							u.aguarde(1000)
						}
						limpa()
					}
					
					escreva("|		Saque\n")
					escreva("|	Digite o valor do saque.\n")
					escreva("|	:")
					leia(saque)
					limpa()
					enquanto(saque > extrato ou saque <= 0){
						escreva("|	Saque invalido. Aguarde e tente novamente.\n")
						escreva("|	")
						leia(saque)
						se((saque > extrato ou saque <= 0)){
							limpa()	
						}
					}
					extrato = extrato - saque
					escreva("|	Saque feito com sucesso.")
					u.aguarde(2000)
					limpa()
					extratoSaida = extratoSaida + "Saque          R$"+ saque + "\n"
				pare
				caso 2:
					escreva("|		Deposito\n")
					escreva("|	Digite o valor do deposito.\n")
					escreva("|	:")
					leia(deposito)
					limpa()
					enquanto(deposito < 0 ou deposito > 10000){
						escreva("|	Deposito invalido. ")
						se(deposito > 10000){
							escreva("Valor max. R$10000. ")	
						}
						escreva("|		Tente novamente.\n")
						escreva("|\n")
						escreva("|	Digite o valor do deposito: ")
						leia(deposito)
						se(deposito < 0 ou deposito > 10000){
							limpa()
						}
					}
					extrato = extrato + deposito
					escreva("|	Deposito feito com sucesso.")
					u.aguarde(2000)
					limpa()
					extratoSaida = extratoSaida + "Deposito          R$"+ deposito + "\n"
				pare
				caso 3:
					escreva("|		Extrato\n")
					escreva(extratoSaida)
					u.aguarde(2000)
					escreva("\n|	Tecle ENTER")
					leia(control)
					limpa()
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
 * @POSICAO-CURSOR = 177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */