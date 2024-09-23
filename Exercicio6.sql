use livraria;

select * from cliente;
select * from pedido;
select * from itempedido;

select 
    cliente.nome 'nome do cliente' , sum(itemPedido.quantidade) 'quantidade de livros comprados'
from
    cliente
        inner join
    pedido ON cliente.idCliente = pedido.idCliente
        inner join
    itempedido ON pedido.idPedido = itempedido.idPedido
group by cliente.nome;

