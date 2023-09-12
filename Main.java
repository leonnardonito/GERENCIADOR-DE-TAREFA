package todolist;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;

public class Main {
    private ArrayList<String> tarefas = new ArrayList<>();
    private JFrame frame;
    private JTextArea tarefasTextArea;

    public Main() {
        frame = new JFrame("GERENCIADOR DE TAREFAS");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300, 300);

        tarefasTextArea = new JTextArea(10, 20);
        tarefasTextArea.setEditable(false);
        JScrollPane scrollPane = new JScrollPane(tarefasTextArea);

        JButton adicionarButton = new JButton("Adicionar tarefa");
        adicionarButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                String descricao = JOptionPane.showInputDialog(frame, "Digite a descrição da tarefa:");
                if (descricao != null && !descricao.isEmpty()) {
                    tarefas.add(descricao);
                    atualizarTarefas();
                }
            }
        });

        JButton mostrarButton = new JButton("Mostrar tarefas");
        mostrarButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                if (tarefas.isEmpty()) {
                    JOptionPane.showMessageDialog(frame, "Nenhuma tarefa na lista.");
                } else {
                    StringBuilder sb = new StringBuilder("TAREFAS LISTADAS:\n");
                    for (int i = 0; i < tarefas.size(); i++) {
                        sb.append((i + 1)).append(" - ").append(tarefas.get(i)).append("\n");
                    }
                    JOptionPane.showMessageDialog(frame, sb.toString());
                }
            }
        });

        JPanel panel = new JPanel();
        panel.add(adicionarButton);
        panel.add(mostrarButton);

        frame.add(scrollPane, BorderLayout.CENTER);
        frame.add(panel, BorderLayout.SOUTH);
        frame.setVisible(true);
    }

    private void atualizarTarefas() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < tarefas.size(); i++) {
            sb.append((i + 1)).append(" - ").append(tarefas.get(i)).append("\n");
        }
        tarefasTextArea.setText(sb.toString());
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new Main();
            }
        });
    }
}
