package br.com.fapen.estoque.repositories;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import br.com.fapen.estoque.enums.StatusEnum;
import br.com.fapen.estoque.models.Pedido;

public interface PedidoCompraRepository extends JpaRepository<Pedido, Long> {
	
	public Page<Pedido> findByFornecedorRazaoSocialContainingIgnoreCase(String razaoSocial, Pageable paginacao);
	public Page<Pedido> findByDataEntregaBetween(LocalDate dataInicial, LocalDate DataFinal, Pageable paginacao);
	public Page<Pedido> findByStatus(StatusEnum status, Pageable paginacao);
	public List<Pedido> findByStatus(StatusEnum status);

}
