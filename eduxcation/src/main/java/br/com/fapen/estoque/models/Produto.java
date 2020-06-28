package br.com.fapen.estoque.models;

import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import br.com.fapen.estoque.enums.TipoProdEnum;

@Entity(name = "tb_cad_produto")
public class Produto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "tipo_produto")
	private TipoProdEnum tipoProduto;

	private String descricao;

	@Column(name = "preco_venda")
	private BigDecimal precoVenda;
	
	private String autor;
	
	private String editora;
	
	private String volume;
	
	private Long ano;
	
	@Column(name = "custo_unitario")
	private BigDecimal custoUnitario;
	
	@Column(name = "saldo_atual")
	private Long saldoAtual;
	
	public Produto() {
		this.tipoProduto = TipoProdEnum.LIVRO;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TipoProdEnum getTipoProduto() {
		return tipoProduto;
	}

	public void setTipoProduto(TipoProdEnum tipoProduto) {
		this.tipoProduto = tipoProduto;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public BigDecimal getPrecoVenda() {
		return precoVenda;
	}

	public void setPrecoVenda(BigDecimal precoVenda) {
		this.precoVenda = precoVenda;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getEditora() {
		return editora;
	}

	public void setEditora(String editora) {
		this.editora = editora;
	}

	public String getVolume() {
		return volume;
	}

	public void setVolume(String volume) {
		this.volume = volume;
	}

	public Long getAno() {
		return ano;
	}

	public void setAno(Long ano) {
		this.ano = ano;
	}

	public BigDecimal getCustoUnitario() {
		return custoUnitario;
	}

	public void setCustoUnitario(BigDecimal custoUnitario) {
		this.custoUnitario = custoUnitario;
	}

	public Long getSaldoAtual() {
		return saldoAtual;
	}

	public void setSaldoAtual(Long saldoAtual) {
		this.saldoAtual = saldoAtual;
	}
	
	public void somaSaldo(Long quantidade) {
		if (this.saldoAtual == null) {
			this.saldoAtual = (long) 0;
		}
		this.saldoAtual += quantidade;
	}

	public void subtraiSaldo(Long quantidade) {
		if (this.saldoAtual == null) {
			this.saldoAtual = (long) 0;
		}
		this.saldoAtual -= quantidade;
	}
}
