import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CriarPedidoDialog extends JDialog {
    private JTextField txtNumeroCliente;
    private SapatariaApp mainApp;

    public CriarPedidoDialog(SapatariaApp owner) {
        super(owner, "Criar Pedido", true);
        mainApp = owner;
        setSize(300, 200);
        setLocationRelativeTo(owner);
        setLayout(new GridLayout(3, 2));

        JLabel lblNumeroCliente = new JLabel("Número do Cliente:");
        txtNumeroCliente = new JTextField();

        JButton btnCriar = new JButton("Criar");
        btnCriar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                criarPedido();
            }
        });

        add(lblNumeroCliente);
        add(txtNumeroCliente);
        add(new JLabel()); // Espaço
        add(btnCriar);
    }

    private void criarPedido() {
        try {
            int numeroCliente = Integer.parseInt(txtNumeroCliente.getText());
            Pedidos novoPedido = new Pedidos(numeroCliente);
            mainApp.getPedidos().add(novoPedido);
            JOptionPane.showMessageDialog(this, "Pedido criado e adicionado à lista de pedidos!");
            dispose();
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(this, "Número do cliente inválido!");
        }
    }
}
