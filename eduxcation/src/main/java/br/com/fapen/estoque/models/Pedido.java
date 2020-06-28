package br.com.fapen.estoque.models;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import br.com.fapen.estoque.enums.CondicaoPagtoEnum;
import br.com.fapen.estoque.enums.StatusEnum;

@Entity(name = "tb_pedido")
public class Pedido {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@ManyToOne
	private Fornecedor fornecedor;
	
	@Column(name = "qtd_produtos")
	private Long quantidadeProdutos;
	
	@Column(name = "total_produtos")
	private BigDecimal valorProdutos;
	
	private BigDecimal frete;
	
	@Column(name = "total_pedido")
	private BigDecimal valorTotal;
	
	@ManyToOne
	/*@JoinColumn(name = "")*/ 
	private Usuario usuario;

	@DateTimeFormat(iso = ISO.DATE)
	@Column(name = "data_entrega")
	private LocalDate dataEntrega;

	@Enumerated(EnumType.STRING)
	@Column(name = "condicao_pagto")
	private CondicaoPagtoEnum condicaoPagamento;

	@Enumerated(EnumType.STRING)
	private StatusEnum status;

	private String observacao;

	@OneToMany(mappedBy = "pedido", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<PedidoItem> itens = new ArrayList<PedidoItem>();

	public Pedido() {
		this.status = StatusEnum.EM_DIGITACAO;
		this.valorTotal = BigDecimal.ZERO;
		this.dataEntrega = LocalDate.now().plusDays(10);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Fornecedor getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(Fornecedor fornecedor) {
		this.fornecedor = fornecedor;
	}

	public Long getQuantidadeProdutos() {
		return quantidadeProdutos;
	}

	public void setQuantidadeProdutos(Long quantidadeProdutos) {
		this.quantidadeProdutos = quantidadeProdutos;
	}

	public BigDecimal getValorProdutos() {
		return valorProdutos;
	}

	public void setValorProdutos(BigDecimal valorProdutos) {
		this.valorProdutos = valorProdutos;
	}

	public BigDecimal getFrete() {
		return frete;
	}

	public void setFrete(BigDecimal frete) {
		this.frete = frete;
	}

	public BigDecimal getValorTotal() {
		return valorTotal;
	}

	public void setValorTotal(BigDecimal valorTotal) {
		this.valorTotal = valorTotal;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public LocalDate getDataEntrega() {
		return dataEntrega;
	}

	public void setDataEntrega(LocalDate dataEntrega) {
		this.dataEntrega = dataEntrega;
	}

	public CondicaoPagtoEnum getCondicaoPagamento() {
		return condicaoPagamento;
	}

	public void setCondicaoPagamento(CondicaoPagtoEnum condicaoPagamento) {
		this.condicaoPagamento = condicaoPagamento;
	}

	public StatusEnum getStatus() {
		return status;
	}

	public void setStatus(StatusEnum status) {
		this.status = status;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public List<PedidoItem> getItens() {
		return itens;
	}

	public void setItens(List<PedidoItem> itens) {
		this.itens = itens;
	}
	
	public String getTexto() {
		String dataFormatada = this.dataEntrega.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		return String.format("Nº %d - %s - Entrega: %s", this.id, this.getFornecedor().getRazaoSocial(), dataFormatada);
	}
}
