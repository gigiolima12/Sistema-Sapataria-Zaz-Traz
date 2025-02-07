import java.util.Date;

public class Funcionarios {
    private int idFuncionario;
    private String nome;
    private String cargo;
    private Date dataDeContratacao;
    private double salario;

    // Construtor
    public Funcionarios(int idFuncionario, String nome, String cargo, Date dataDeContratacao, double salario) {
        this.idFuncionario = idFuncionario;
        this.nome = nome;
        this.cargo = cargo;
        this.dataDeContratacao = dataDeContratacao;
        this.salario = salario;
    }

    // Getters e Setters
    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public Date getDataDeContratacao() {
        return dataDeContratacao;
    }

    public void setDataDeContratacao(Date dataDeContratacao) {
        this.dataDeContratacao = dataDeContratacao;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    @Override
    public String toString() {
        return "Funcionario{" +
                "idFuncionario=" + idFuncionario +
                ", nome='" + nome + '\'' +
                ", cargo='" + cargo + '\'' +
                ", dataDeContratacao=" + dataDeContratacao +
                ", salario=" + salario +
                '}';
    }
}