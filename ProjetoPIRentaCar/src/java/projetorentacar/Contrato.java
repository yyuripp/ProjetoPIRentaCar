package projetorentacar;

import java.util.Date;

/**
 *
 * @author pc
 */
public class Contrato {

    private int contratoId;
    private int clienteId;
    private int usuarioId;
    private int veiculoId;
    private Date dataRetirada;
    private Date dataDevolucao;
    private int quantidadeDiarias;
    private double totalReserva;
    private double saldoReserva;
    private int filialId;
    private Date dataAbertura;
    private Date dataEncerramento;
    private boolean aberto;
    
    private String nomeCliente;
    private String nomeFilial;
    private String categoria;
    
    public Contrato(){
    
    }
    public Contrato(int clienteId, int usuarioId, int veiculoId, Date dataRetirada, Date dataDevolucao, 
            int quantidadeDiarias, double totalReserva, double saldoReserva, int filialId) {
        this.clienteId = clienteId;
        this.usuarioId = usuarioId;
        this.veiculoId = veiculoId;
        this.dataRetirada = dataRetirada;
        this.dataDevolucao = dataDevolucao;
        this.quantidadeDiarias = quantidadeDiarias;
        this.saldoReserva = saldoReserva;
        this.filialId = filialId;
        this.dataAbertura = new Date();               
        this.aberto = true;
        
    }

    
public Contrato(int id, int clienteId, int usuarioId, int veiculoId, Date dataRetirada, Date dataDevolucao, 
            int quantidadeDiarias, double totalReserva, double saldoReserva, int filialId, Date dataAbertura, Date dataEncerramento, boolean ativo) {
        this.contratoId = id;
        this.clienteId = clienteId;
        this.usuarioId = usuarioId;
        this.veiculoId = veiculoId;
        this.dataRetirada = dataRetirada;
        this.dataDevolucao = dataDevolucao;
        this.quantidadeDiarias = quantidadeDiarias;
        this.totalReserva = totalReserva;
        this.saldoReserva = saldoReserva;
        this.filialId = filialId;
        this.dataAbertura = dataAbertura;
        this.dataEncerramento = dataEncerramento;
        this.aberto = ativo;
        
    }
public Contrato(int id, String nomeCliente, Date dataRetirada, Date dataDevolucao, int quantidadeDiarias, String categoria, 
        double totalReserva, Date dataAbertura, Date dataEncerramento, String nomeFilial, boolean ativo) {
        this.contratoId = id;
        this.nomeCliente = nomeCliente;
        this.dataRetirada = dataRetirada;
        this.dataDevolucao = dataDevolucao;
        this.quantidadeDiarias = quantidadeDiarias;
        this.categoria = categoria;
        this.totalReserva = totalReserva;
        this.dataAbertura = dataAbertura;
        this.dataEncerramento = dataEncerramento;
        this.nomeFilial = nomeFilial;
        this.aberto = ativo;
        
    }
    public int getContratoId() {
        return contratoId;
    }

    public int getClienteId() {
        return clienteId;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public int getVeiculoId() {
        return veiculoId;
    }

    public Date getDataRetirada() {
        return dataRetirada;
    }

    public Date getDataDevolucao() {
        return dataDevolucao;
    }

    public int getQuantidadeDiarias() {
        return quantidadeDiarias;
    }

    public double getSaldoReserva() {
        return saldoReserva;
    }

    public int getFilialId() {
        return filialId;
    }

    public boolean isAberto() {
        return aberto;
    }

    public Date getDataAbertura() {
        return dataAbertura;
    }

    public Date getDataEncerramento() {
        return dataEncerramento;
    }

    public double getTotalReserva() {
        return totalReserva;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public String getNomeFilial() {
        return nomeFilial;
    }

    public String getCategoria() {
        return categoria;
    }
}
