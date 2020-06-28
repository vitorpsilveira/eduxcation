package br.com.fapen.estoque.forms;

import java.util.ArrayList;
import java.util.List;

import br.com.fapen.estoque.models.PedidoItem;
import br.com.fapen.estoque.models.Pedido;

public class PedidoCompraForm {

	private Pedido pedidoCompra;
	private List<PedidoItem> itensPedidoCompra = new ArrayList<PedidoItem>();

	public PedidoCompraForm() {
	}

	public PedidoCompraForm(Pedido pedido) {
		this.pedidoCompra = pedido;
		this.itensPedidoCompra = pedido.getItens();
	}

	public Pedido getPedidoCompra() {
		return pedidoCompra;
	}

	public void setPedidoCompra(Pedido pedidoCompra) {
		this.pedidoCompra = pedidoCompra;
	}

	public List<PedidoItem> getItensPedidoCompra() {
		return itensPedidoCompra;
	}

	public void setItensPedidoCompra(List<PedidoItem> itensPedidoCompra) {
		this.itensPedidoCompra = itensPedidoCompra;
	}
}
