programa {
  const inteiro TAM = 10
  inteiro pilha[TAM] 
  inteiro topo

  funcao inicializar(){//Inicio
    topo = -1
  }

  funcao inteiro verificaCheia(){//isFull
    se (topo == TAM-1){
      retorne 1
    }senao{
      retorne 0
    }
  }
  funcao inteiro verificaVazia(){//isEmpty
    se (topo == -1){
      retorne 1
    }senao{
      retorne 0
    }
  }
  funcao empilha(){//Push
    inteiro valor, pilhaCheia
    pilhaCheia = verificaCheia()
    se (pilhaCheia == 0){
      topo = topo + 1
      escreva ("Digite o valor: ")
      leia(valor)
      pilha[topo] = valor
    }senao{
      escreva("PILHA CHEIA\n")
    }
  }

  funcao desempilha(){//Pop
    inteiro pilhaVazia
    pilhaVazia = verificaVazia()
    se (pilhaVazia == 1){
      escreva("PILHA VAZIA\n")
    }senao{
      topo--
    }
  }
  funcao imprimir(){//Print
    escreva("\n-=-=- PILHA -=-=-\n")
    para (inteiro cont = 0; cont <= topo; cont++){
      escreva(" ", pilha[cont])
    }
    escreva("\n")
  }
  funcao ultima_carta(){//Peek
    inteiro topo_carta
    topo_carta = pilha[topo]
    escreva("=-=-=-=-=-=-=-=\n")
    escreva(topo_carta,"\n")
    escreva("=-=-=-=-=-=-=-=\n\n")
  }

  funcao inicio() {
    inteiro opcao = 0
    inicializar()
    enquanto (opcao != 5){
      escreva("=-=-=-=-=-=-=-=\n")
      escreva("Menu do Sistema\n")
      escreva("=-=-=-=-=-=-=-=\n\n")

      escreva("1 - Adicionar carta\n")
      escreva("2 - Ver carta no topo\n")
      escreva("3 - Remover cartas\n")
      escreva("4 - Quantidade de cartas\n")
      escreva("5 - Fechar sistema\n\n")

      escreva("=-=-=-=-=-=-=-=\n\n")
      leia(opcao)
      escolha(opcao){
        caso 1:
          empilha()
          pare
        caso 2:
          ultima_carta()
          pare  
        caso 3:
          desempilha()
          pare
        caso 4:
          imprimir()
          pare
        caso 5:
          pare
        caso contrario:
          escreva("Por favor, selecione uma opção válida\n\n")
          pare
      }
    } // Laço de repetição
    escreva("Sistema desligado")
  }
}