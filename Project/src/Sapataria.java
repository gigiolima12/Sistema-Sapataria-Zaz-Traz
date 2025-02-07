import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class Sapataria {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Queue<Pedidos> pedidos = new LinkedList<>();

        while (true) {
            System.out.println("1. Criar pedido");
            System.out.println("2. Cadastrar pedido para o estoque");
            System.out.println("3. Extrair próximo pedido a ser preparado e entregue ao cliente");
            System.out.println("4. Sair");
            System.out.print("Escolha uma opção: ");
            int opcao = scanner.nextInt();
            scanner.nextLine();  

            switch (opcao) {
                case 1 -> {
                    System.out.println("Criação de pedido:");
                    System.out.print("Digite o número do cliente: ");
                    int numeroCliente = scanner.nextInt();
                    scanner.nextLine();  
                    
                    // Recebe o número do cliente
                    Pedidos novoPedido = new Pedidos(numeroCliente);
                    
                    // Adicionar itens ao pedido
                    
                    pedidos.add(novoPedido);
                    System.out.println("Pedido criado e adicionado à lista de pedidos!");
                }
                case 2 -> {
                    if (!pedidos.isEmpty()) {
                        System.out.println("Pedido cadastrado para o estoque!");
                    } else {
                        System.out.println("Não há pedidos para cadastrar no estoque.");
                    }
                }
                case 3 -> {
                    if (!pedidos.isEmpty()) {
                        Pedidos proximoPedido = pedidos.peek();
                        System.out.println("Próximo pedido a ser preparado e entregue ao cliente: " + proximoPedido.getNumeroCliente());
                    } else {
                        System.out.println("Não há pedidos no estoque.");
                    }
                }
                case 4 -> {
                    System.out.println("Saindo...");
                    System.exit(0);
                }
            }
        }
    }
}