# Exercício de Pilha - Senai

## O que é uma pilha?
Uma pilha é uma estrutura de dados que segue o princípio LIFO (Last In, First Out), ou seja, significa que o último elemento que entra é o primeiro que sai. Imagine uma pilha de pratos: cada prato que você coloca em cima da pilha é o último a entrar, e, consequentemente, o primeiro a ser retirado quando você precisa de um prato.

## Métodos que foram utilizados no código:
Antes de mostrar as funções, é necessário mostrar primeiro as variáveis globais que dão início ao código.

```
programa {
  const inteiro TAM = 10
  inteiro pilha[TAM] 
  inteiro topo
```
* **Primeira variável:** Constante criada para denominar o tamanho do vetor da pilha.
* **Segunda variável:** Vetor da pilha com a variável que mostra o seu tamanho.
* **Terceira variável:** Variável criada para ler as posições dos valores da pilha.


```
  funcao inicializar(){
    topo = -1
  }
```
### Inicializar:
Função criada para dar início as pilhas.

```
funcao inteiro verificaCheia(){
    se (topo == TAM-1){
      retorne 1
    }senao{
      retorne 0
    }
  }
```
### Verifica cheia:
Função criada para verificar se a pilha está cheia, caso tentem adicionar mais valores para a pilha enquanto a pilha estiver cheia.

```
  funcao inteiro verificaVazia(){
    se (topo == -1){
      retorne 1
    }senao{
      retorne 0
    }
  }
```
### Verifica vazia (isEmpty):
Função criada para verificar se a pilha está vazia, caso tentem remover valores da pilha e não ter nenhum.
```
funcao empilha(){
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
```
### Empilha (Push):
Função criada para adicionar um elemento a pilha, o qual será acrescentado sempre no topo da pilha.
```
funcao desempilha(){
    inteiro pilhaVazia
    pilhaVazia = verificaVazia()
    se (pilhaVazia == 1){
      escreva("PILHA VAZIA\n")
    }senao{
      topo--
    }
  }
```
### Desempilha (Pop):
Função criada para remover o elemento do topo da pilha.
```
funcao imprimir(){
    escreva("\n-=-=- PILHA -=-=-\n")
    para (inteiro cont = 0; cont <= topo; cont++){
      escreva(" ", pilha[cont])
    }
    escreva("\n")
  }
```
### Imprimir:
Função criada para mostrar os valores que estão armazenados na pilha.
```
  funcao ultima_carta(){
    inteiro topo_carta
    topo_carta = pilha[topo]
    escreva("=-=-=-=-=-=-=-=\n")
    escreva(topo_carta,"\n")
    escreva("=-=-=-=-=-=-=-=\n\n")
  }
```
### Ultima carta (Peek)
Função criada para visualizar o elemento no topo da pilha sem removê-lo. Isso é útil para verificar o elemento mais recente na pilha sem alterar sua ordem.

## Início do algorítmo
Agora que vemos as funções que serão usadas, vamos ao código.
```
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
      escreva("4 - Lista das cartas\n")
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
    }
    escreva("Sistema desligado")
  }
}
```
1. O código começará criando uma variável do tipo inteiro chamada opção, a qual terá o valor zero para a funcionalidade do laço de repetição que está para ser mostrado a seguir.
2. Depois será adicionado a função "Inicializar" a qual servirá para começar a pilha, já que sem essa função, o código não funciona.
3. Começamos o código com a estrutura de repetição que foi citada na primeira parte, o que faz com que o código sempre execute o código, a não ser que a opção "5" seja selecionada, também foi colocado uma estrutura de escolha para deixar o código mais funcional, o que também impede outros valores de serem acrescentados e causar complicações ao código.
4. Dentro da estrutura de escolha, é mostrado o código que possui 5 opções para executar o programa.
    1. Opção 1: Foi colocado a função "Empilha(Push)" para acrescentar um novo valor no topo da pilha.
    2. Opção 2: Foi acrescentado a função "Ultima carta(Peek)" para ler qual foi a ultima carta acrescentada na pilha, lembrando que apenas o último valor será mostrado.
    3. Opção 3: Foi acrescentado a função "Desempilha(Pop)" para remover a última carta que foi adicionada a pilha.
    4. Opção 4: Foi acrescentado a função "Imprimir" para revelar a lista das cartas que estão registradas na pilha.
    5. Opção 5: Encerra o programa.

**Obs:** Qualquer número sem ser de 1 à 5 não é permitido graças ao caso contrário colocado na estrutura de escolha.

# Funções para colocar futuramente
Não consegui colocar elas no dia, mas eu penso em colocar as funções mostradas na tabela a seguir:
| Função  | Explicação |
| ------- |:-------------:|
| size(Tamanho) | Algumas implementações de pilhas também fornecem um método para verificar o número de elementos na pilha.     |
| inverte | Inverte os valores da pilha, ou seja, o primeiro passa a ser o último.     |
| embaralha | Embaralha os dados de uma pilha. |

Ainda não sei como irei acrescentar essas funções, mas por hora esse é o planejado, inclusive qualquer ajuda será bem-vinda.
