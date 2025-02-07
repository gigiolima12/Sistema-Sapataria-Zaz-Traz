public class Produtos {
    private int idProduto;
    private String nome;
    private String descricao;
    private double preco;
    private String tamanho;
    private String cor;
    private int estoque;
    private int idCategoria;
    private int idFornecedor;

    // Construtor
    public Produtos (int idProduto, String nome, String descricao, double preco, String tamanho, String cor, int estoque, int idCategoria, int idFornecedor) {
        this.idProduto = idProduto;
        this.nome = nome;
        this.descricao = descricao;
        this.preco = preco;
        this.tamanho = tamanho;
        this.cor = cor;
        this.estoque = estoque;
        this.idCategoria = idCategoria;
        this.idFornecedor = idFornecedor;
    }

    // Getters e Setters
    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public int getIdFornecedor() {
        return idFornecedor;
    }

    public void setIdFornecedor(int idFornecedor) {
        this.idFornecedor = idFornecedor;
    }

    @Override
    public String toString() {
        return "Produto{" +
                "idProduto=" + idProduto +
                ", nome='" + nome + '\'' +
                ", descricao='" + descricao + '\'' +
                ", preco=" + preco +
                ", tamanho='" + tamanho + '\'' +
                ", cor='" + cor + '\'' +
                ", estoque=" + estoque +
                ", idCategoria=" + idCategoria +
                ", idFornecedor=" + idFornecedor +
                '}';
    }
}