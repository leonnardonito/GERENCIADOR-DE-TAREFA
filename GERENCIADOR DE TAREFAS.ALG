Algoritmo "Gerenciador de Tarefas"
Var
   Tarefas: vetor[1..100] de caractere  // Declara um vetor para armazenar as tarefas
   Opcao, descricao: caractere         // Declara vari�veis para op��es e descri��es
   I: inteiro                          // Declara uma vari�vel para controle de loop

Inicio
   Opcao := ""

   Enquanto opcao <> "0" faca          // Loop principal, executa at� a op��o ser "0"
      escrevaL(" ")                   // Imprime uma linha em branco
      escrevaL("GERENCIADOR DE TAREFAS")
      escrevaL("1 - Adicionar tarefa") // Exibe op��es de menu
      escrevaL("2 - Mostrar tarefas")
      escrevaL("0 - Sair do programa")
      escrevaL("--------------------")
      escreva("Escolha uma op��o: ")   // Solicita uma op��o do usu�rio
      leia(opcao)                     // L� a op��o escolhida

      escolha opcao
         caso "1"
            escreva("Digite a descri��o da tarefa: ")
            leia(descricao)           // Solicita e l� a descri��o da tarefa
            tarefas := concatena(tarefas, descricao)  // Adiciona a tarefa ao vetor
            escrevaL("Tarefa adicionada com sucesso!") // Confirma a adi��o da tarefa
         caso "2"
            se tamanho(tarefas) = 0 entao // Verifica se h� tarefas na lista
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
            escrevaL("Saindo do programa.") // Mensagem de sa�da do programa
         senao
            escrevaL("Op��o inv�lida. Por favor, escolha uma op��o indicada acima.") // Mensagem de op��o inv�lida
      fimescolha
   fimenquanto
fimalgoritmo
