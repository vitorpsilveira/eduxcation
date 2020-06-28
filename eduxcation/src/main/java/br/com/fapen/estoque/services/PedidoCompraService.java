package br.com.fapen.estoque.services;

import java.io.ByteArrayInputStream;
import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import br.com.fapen.estoque.enums.StatusEnum;
import br.com.fapen.estoque.forms.PedidoCompraForm;
import br.com.fapen.estoque.forms.PedidoFiltroForm;
import br.com.fapen.estoque.models.PedidoItem;
import br.com.fapen.estoque.models.Pedido;
import br.com.fapen.estoque.reports.PedidoCompraReport;
import br.com.fapen.estoque.repositories.Paginacao;
import br.com.fapen.estoque.repositories.PedidoCompraRepository;

@Service
public class PedidoCompraService {

	@Autowired
	private PedidoCompraRepository repPedidos;

	@Autowired
	private PedidoCompraReport relImpressaoPedido;

	public void calcularTotal(Pedido pedido) {
		BigDecimal total = BigDecimal.ZERO;
		for (PedidoItem item : pedido.getItens()) {
			BigDecimal qtde = new BigDecimal(item.getQuantidade());
			BigDecimal totalItem = item.getPrecoUnitario().multiply(qtde);
			total = total.add(totalItem);
		}
		pedido.setValorTotal(total);
	}

	public void salvar(PedidoCompraForm pedidoCompraForm) {
		pedidoCompraForm.getPedidoCompra().getItens().clear();
		for (PedidoItem item : pedidoCompraForm.getItensPedidoCompra()) {
			item.setPedido(pedidoCompraForm.getPedidoCompra());
			pedidoCompraForm.getPedidoCompra().getItens().add(item);
		}
		this.calcularTotal(pedidoCompraForm.getPedidoCompra());
		repPedidos.save(pedidoCompraForm.getPedidoCompra());
	}

	public Page<Pedido> listar(PageRequest paginacao) {
		return repPedidos.findAll(paginacao);
	}

	public Page<Pedido> listar(PedidoFiltroForm filtro) {

		if (filtro.isNovoFiltro()) {
			filtro.setPagina(1);
		}
		Pageable paginacao = Paginacao.getPaginacao(filtro.getPagina());

		if ("RS".equals(filtro.getTipoFiltro())) {
			return repPedidos.findByFornecedorRazaoSocialContainingIgnoreCase(filtro.getRazaoSocial(), paginacao);
		} else if ("ST".equals(filtro.getTipoFiltro())) {
			return repPedidos.findByStatus(filtro.getStatus(), paginacao);
		} else if ("DT".equals(filtro.getTipoFiltro())) {
			return repPedidos.findByDataEntregaBetween(filtro.getEntregaInicial(), filtro.getEntregaFinal(), paginacao);
		} else {
			return repPedidos.findAll(paginacao);
		}
	}

	public Pedido findById(Long id) {
		Optional<Pedido> optPedido = repPedidos.findById(id);
		if (optPedido.isEmpty()) {
			return null;
		}
		return optPedido.get();
	}

	public Pedido excluir(Pedido pedido) {
		pedido.setStatus(StatusEnum.CANCELADO);
		return repPedidos.save(pedido);
	}

	public ByteArrayInputStream gerarPdf(Pedido pedCompra) {
		return relImpressaoPedido.gerarPDF(pedCompra);

	}

	public List<Pedido> listarEmDigitacao() {
		return repPedidos.findByStatus(StatusEnum.EM_DIGITACAO);
	}

	public Pedido alteraStatus(Pedido pedido, StatusEnum status) {
		pedido.setStatus(status);
		return repPedidos.save(pedido);
	}

}
