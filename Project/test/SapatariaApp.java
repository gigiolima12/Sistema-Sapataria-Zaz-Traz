import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.LinkedList;
import java.util.Queue;

public class SapatariaApp extends JFrame {
    private Queue<Pedidos> pedidos = new LinkedList<>();

    public SapatariaApp() {
        setTitle("Sistema de Sapataria");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setLayout(new BorderLayout());

        JButton btnCriarPedido = new JButton("Criar Pedido");
        JButton btnCadastrarEstoque = new JButton("Cadastrar Pedido para Estoque");
        JButton btnExtrairPedido = new JButton("Extrair Próximo Pedido");

        JPanel panel = new JPanel();
        panel.add(btnCriarPedido);
        panel.add(btnCadastrarEstoque);
        panel.add(btnExtrairPedido);

        add(panel, BorderLayout.CENTER);

        btnCriarPedido.addActionListener(e -> new CriarPedidoDialog(this).setVisible(true));
        btnCadastrarEstoque.addActionListener(e -> new CadastrarEstoqueDialog(this).setVisible(true));
        btnExtrairPedido.addActionListener(e -> new ExtrairPedidoDialog(this).setVisible(true));
    }

    public Queue<Pedidos> getPedidos() {
        return pedidos;
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            new SapatariaApp().setVisible(true);
        });
    }
}
