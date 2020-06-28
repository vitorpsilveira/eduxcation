package br.com.fapen.estoque.forms;

import java.math.BigDecimal;

import br.com.fapen.estoque.models.Produto;

public class ItemRecebimentoForm {

	private Produto produto;
	private Long quantidade;
	private BigDecimal precoUnitario;
	private BigDecimal valorTotal;

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public Long getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Long long1) {
		this.quantidade = long1;
	}

	public BigDecimal getPrecoUnitario() {
		return precoUnitario;
	}

	public void setPrecoUnitario(BigDecimal precoUnitario) {
		this.precoUnitario = precoUnitario;
	}

	public BigDecimal getValorTotal() {
		return valorTotal;
	}

	public void setValorTotal(BigDecimal valorTotal) {
		this.valorTotal = valorTotal;
	}
}
