use livraria;

select * from livro;
select * from editora;

select 
    editora.nome, livro.titulo
from
    editora
        inner join
    livro ON editora.idEditora = livro.idEditora
order by editora.nome desc;
