import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexao {
    
    // Método para obter a conexão com o banco de dados
    public static Connection getConnection() {
        Connection conexao = null;
        try {
            // Carrega o driver do MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Estabelece a conexão
            conexao = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/sapataria_db_giovanna", 
                "root", 
                "Sucesso123"
            );
            System.out.println("Conexão estabelecida com sucesso!");
        } catch (ClassNotFoundException e) {
            System.out.println("Driver não encontrado: " + e.getMessage());
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Erro ao conectar com o banco de dados: " + e.getMessage());
            e.printStackTrace();
        }
        return conexao;
    }

    // Método principal
    public static void main(String[] args) {
        // Usando try-with-resources para garantir o fechamento correto dos recursos
        try (Connection conexao = getConnection()) {
            if (conexao != null) {
                // Testa a conexão executando uma consulta simples
                try (Statement stmt = conexao.createStatement(); 
                     ResultSet rs = stmt.executeQuery("SELECT 1")) {

                    if (rs.next()) {
                        System.out.println("Teste de consulta bem-sucedido!");
                    } else {
                        System.out.println("Teste de consulta falhou!");
                    }
                }
            }
        } catch (SQLException e) {
            System.out.println("Erro ao executar a consulta: " + e.getMessage());
            e.printStackTrace();
        }
    }
}