use livraria;

select * from editora;
select * from livro;

select 
    editora.nome 'nome da editora',
    round(avg(livro.preco), 2) 'média de preço'
from
    editora
        inner join
    livro ON editora.idEditora = livro.idEditora
group by editora.nome;
