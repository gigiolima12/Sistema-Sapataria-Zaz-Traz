import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CadastrarEstoqueDialog extends JDialog {
    private SapatariaApp mainApp;

    public CadastrarEstoqueDialog(SapatariaApp owner) {
        super(owner, "Cadastrar Pedido para Estoque", true);
        mainApp = owner;
        setSize(300, 150);
        setLocationRelativeTo(owner);
        setLayout(new FlowLayout());

        JButton btnCadastrar = new JButton("Cadastrar Pedido");
        btnCadastrar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarPedido();
            }
        });

        add(btnCadastrar);
    }

    private void cadastrarPedido() {
        if (!mainApp.getPedidos().isEmpty()) {
            JOptionPane.showMessageDialog(this, "Pedido cadastrado para o estoque!");
        } else {
            JOptionPane.showMessageDialog(this, "Não há pedidos para cadastrar no estoque.");
        }
        dispose();
    }
}
