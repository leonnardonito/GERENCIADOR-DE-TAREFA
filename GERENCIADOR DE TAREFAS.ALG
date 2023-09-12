Algoritmo "Gerenciador de Tarefas"
Var
   Tarefas: vetor[1..100] de caractere  // Declara um vetor para armazenar as tarefas
   Opcao, descricao: caractere         // Declara variáveis para opções e descrições
   I: inteiro                          // Declara uma variável para controle de loop

Inicio
   Opcao := ""

   Enquanto opcao <> "0" faca          // Loop principal, executa até a opção ser "0"
      escrevaL(" ")                   // Imprime uma linha em branco
      escrevaL("GERENCIADOR DE TAREFAS")
      escrevaL("1 - Adicionar tarefa") // Exibe opções de menu
      escrevaL("2 - Mostrar tarefas")
      escrevaL("0 - Sair do programa")
      escrevaL("--------------------")
      escreva("Escolha uma opção: ")   // Solicita uma opção do usuário
      leia(opcao)                     // Lê a opção escolhida

      escolha opcao
         caso "1"
            escreva("Digite a descrição da tarefa: ")
            leia(descricao)           // Solicita e lê a descrição da tarefa
            tarefas := concatena(tarefas, descricao)  // Adiciona a tarefa ao vetor
            escrevaL("Tarefa adicionada com sucesso!") // Confirma a adição da tarefa
         caso "2"
            se tamanho(tarefas) = 0 entao // Verifica se há tarefas na lista
               escrevaL("Nenhuma tarefa na lista.")
            senao
               escrevaL("--------------------")
               escrevaL("TAREFAS LISTADAS")
               para i de 1 ate tamanho(tarefas) faca // Loop para listar tarefas
                  escreva(i, " - ", tarefas[i])
               fimpara
               escrevaL("--------------------")
            fimse
         caso "0"
            escrevaL("Saindo do programa.") // Mensagem de saída do programa
         senao
            escrevaL("Opção inválida. Por favor, escolha uma opção indicada acima.") // Mensagem de opção inválida
      fimescolha
   fimenquanto
fimalgoritmo
