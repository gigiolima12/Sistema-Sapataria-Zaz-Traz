public class Categorias_produtos {
    private int idCategoria;
    private String nomeCategoria;
    private String descricao;

    // Construtor
    public Categorias_produtos(int idCategoria, String nomeCategoria, String descricao) {
        this.idCategoria = idCategoria;
        this.nomeCategoria = nomeCategoria;
        this.descricao = descricao;
    }

    // Getters e Setters
    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNomeCategoria() {
        return nomeCategoria;
    }

    public void setNomeCategoria(String nomeCategoria) {
        this.nomeCategoria = nomeCategoria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    @Override
    public String toString() {
        return "CategoriaProduto{" +
                "idCategoria=" + idCategoria +
                ", nomeCategoria='" + nomeCategoria + '\'' +
                ", descricao='" + descricao + '\'' +
                '}';
    }
}