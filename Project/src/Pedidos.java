import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Pedidos {
    private int idPedido;
    private Date dataDoPedido;
    private int idCliente;
    private int idFuncionario;
    private String statusDoPedido;
    private double totalDoPedido;
    private final List<ItemPedido> itensPedido;

    // Construtor
    public Pedidos(int idPedido, Date dataDoPedido, int idCliente, int idFuncionario, String statusDoPedido, double totalDoPedido) {
        this.idPedido = idPedido;
        this.dataDoPedido = dataDoPedido;
        this.idCliente = idCliente;
        this.idFuncionario = idFuncionario;
        this.statusDoPedido = statusDoPedido;
        this.totalDoPedido = totalDoPedido;
        this.itensPedido = new ArrayList<>();
    }

    public Pedidos(int numeroCliente) {
        this.idCliente = numeroCliente;
        this.itensPedido = new ArrayList<>();
        // Inicializando os outros campos
        this.idPedido = 0;
        this.dataDoPedido = new Date();
        this.idFuncionario = 0;
        this.statusDoPedido = "";
        this.totalDoPedido = 0.0;
    }

    // Getters e Setters
    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }

    public Date getDataDoPedido() {
        return dataDoPedido;
    }

    public void setDataDoPedido(Date dataDoPedido) {
        this.dataDoPedido = dataDoPedido;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public String getStatusDoPedido() {
        return statusDoPedido;
    }

    public void setStatusDoPedido(String statusDoPedido) {
        this.statusDoPedido = statusDoPedido;
    }

    public double getTotalDoPedido() {
        return totalDoPedido;
    }

    public void setTotalDoPedido(double totalDoPedido) {
        this.totalDoPedido = totalDoPedido;
    }

    public List<ItemPedido> getItensPedido() {
        return itensPedido;
    }

    public void adicionarItemPedido(ItemPedido itemPedido) {
        this.itensPedido.add(itemPedido);
    }

    public double calcularTotalPedido() {
        double total = 0;
        for (ItemPedido item : itensPedido) {
            total += item.getSubtotal();
        }
        this.totalDoPedido = total;
        return totalDoPedido;
    }

    public void atualizarStatusPedido(String novoStatus) {
        this.statusDoPedido = novoStatus;
    }

    public void adicionarDesconto(double desconto) {
        if (this.totalDoPedido >= desconto) {
            this.totalDoPedido -= desconto;
        } else {
            System.out.println("Desconto maior que o total do pedido. Desconto não aplicado.");
        }
    }

    public int getNumeroCliente() {
        return idCliente;
    }
}