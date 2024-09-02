/*Exercício 1: Listar todos os pedidos com detalhes do cliente

Escreva uma consulta SQL que retorne o ID do pedido, a data do pedido, o nome completo do cliente e o email para todos os pedidos.
Use um JOIN para combinar as tabelas Orders e Customers.

Exercício 2: Encontrar todos os produtos pedidos por um cliente específico

Escreva uma consulta SQL que retorne o nome do produto e a quantidade pedida para todos os produtos pedidos por um cliente com um customer_id específico 
(por exemplo, customer_id = 1). Essa consulta deve combinar as tabelas Order_Items, Orders e Products.

Exercício 3: Calcular o total gasto por cada cliente

Escreva uma consulta SQL que calcule o total gasto por cada cliente. O resultado deve incluir o nome completo do cliente e o total gasto.
Essa consulta deve usar JOINs para combinar as tabelas Customers, Orders, Order_Items e Products, e deve usar uma função de agregação para calcular o total.

Exercício 4: Encontrar os clientes que nunca fizeram um pedido

Escreva uma consulta SQL que retorne os nomes dos clientes que nunca fizeram um pedido.
Para isso, use um LEFT JOIN entre as tabelas Customers e Orders e filtre os resultados para encontrar clientes sem pedidos.

Exercício 5: Listar os produtos mais vendidos

Escreva uma consulta SQL que retorne o nome do produto e a quantidade total vendida, ordenando os resultados pelos produtos mais vendidos.
Combine as tabelas Order_Items e Products, e utilize uma função de agregação para somar a quantidade vendida de cada produto.
*/

/*EXERCICIO 1*/
select orders.order_id, orders.order_date, customers.first_name, customers.last_name, customers.email
from orders join customers
on orders.order_id = customers.customer_id;

/*EXERCICIO 2*/
select products.product_name, order_items.quantity
from
order_items
join
orders
on orders.order_id = order_items.order_id
join
products
on order_items.product_id = products.product_id
where orders.customer_id = 1;

/*EXERCICIO 3*/
select customers.first_name, customers.last_name, sum(products.price * order_items.quantity)
from
customers join orders on customers.customer_id = orders.customer_id
join order_items on orders.order_id = order_items.order_id
join products on order_items.product_id = products.product_id
group by Customers.customer_id, Customers.first_name, Customers.last_name;

/*EXERCICIO 4*/
select customers.first_name, customers.last_name
from
customers
left join
orders on orders.customer_id = customers.customer_id
where orders.customer_id is null;

/*EXERCICIO 5*/
select products.product_name, sum(order_items.quantity)
from 
order_items
join
products
on order_items.product_id = products.product_id
group by products.product_name
order by sum(order_items.quantity) desc;

select customers.first_name from customers;