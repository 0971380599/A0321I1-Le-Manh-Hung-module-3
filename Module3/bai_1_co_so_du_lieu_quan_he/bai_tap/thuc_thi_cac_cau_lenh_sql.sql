select * from classicmodels.customers;
select customerName, phone, city, country from classicmodels.customers;
select * from classicmodels.customers where customerName = 'Atelier Graphique';
select * from classicmodels.customers where customerName like '%%';
select * from classicmodels.customers where city in ('Nantes',' Las Vegas',' Warszawa','NYC');