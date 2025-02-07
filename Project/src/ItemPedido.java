public class ItemPedido {
    private final int idItemPedido;
    private final int idPedido;
    private int idProduto;
    private int quantidade;
    private double precoUnitario;

    // Construtor
    public ItemPedido (int idItemPedido, int idPedido, int idProduto, int quantidade, double precoUnitario) {
        this.idItemPedido = idItemPedido;
        this.idPedido = idPedido;
        this.idProduto = idProduto;
        this.quantidade = quantidade;
        this.precoUnitario = precoUnitario;
    }

    // Getters e Setters
    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getPrecoUnitario() {
        return precoUnitario;
    }

    public void setPrecoUnitario(double precoUnitario) {
        this.precoUnitario = precoUnitario;
    }

    public double getSubtotal() {
        return this.quantidade * this.precoUnitario;
    }

    @Override
    public String toString() {
        return "ItemPedido{" +
                "idItemPedido=" + idItemPedido +
                ", idPedido=" + idPedido +
                ", idProduto=" + idProduto +
                ", quantidade=" + quantidade +
                ", precoUnitario=" + precoUnitario +
                '}';
    }
}
