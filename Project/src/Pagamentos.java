import java.util.Date;

public class Pagamentos {
    private int idPagamento;
    private int idPedido;
    private String metodoPagamento;
    private double valor;
    private Date data;

    // Construtor
    public Pagamentos(int idPagamento, int idPedido, String metodoPagamento, double valor, Date data) {
        this.idPagamento = idPagamento;
        this.idPedido = idPedido;
        this.metodoPagamento = metodoPagamento;
        this.valor = valor;
        this.data = data;
    }

    // Getters e Setters
    public int getIdPagamento() {
        return idPagamento;
    }

    public void setIdPagamento(int idPagamento) {
        this.idPagamento = idPagamento;
    }

    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }

    public String getMetodoPagamento() {
        return metodoPagamento;
    }

    public void setMetodoPagamento(String metodoPagamento) {
        this.metodoPagamento = metodoPagamento;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "Pagamento{" +
                "idPagamento=" + idPagamento +
                ", idPedido=" + idPedido +
                ", metodoPagamento='" + metodoPagamento + '\'' +
                ", valor=" + valor +
                ", data=" + data +
                '}';
    }
}