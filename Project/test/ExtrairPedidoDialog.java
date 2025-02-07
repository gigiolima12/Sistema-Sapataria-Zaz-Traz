import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ExtrairPedidoDialog extends JDialog {
    private SapatariaApp mainApp;

    public ExtrairPedidoDialog(SapatariaApp owner) {
        super(owner, "Extrair Pedido", true);
        mainApp = owner;
        setSize(300, 150);
        setLocationRelativeTo(owner);
        setLayout(new FlowLayout());

        JButton btnExtrair = new JButton("Extrair Pedido");
        btnExtrair.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                extrairPedido();
            }
        });

        add(btnExtrair);
    }

    private void extrairPedido() {
        if (!mainApp.getPedidos().isEmpty()) {
            Pedidos proximoPedido = mainApp.getPedidos().peek();
            JOptionPane.showMessageDialog(this, "Próximo pedido a ser preparado e entregue ao cliente: " + proximoPedido.getNumeroCliente());
        } else {
            JOptionPane.showMessageDialog(this, "Não há pedidos no estoque.");
        }
        dispose();
    }
}
