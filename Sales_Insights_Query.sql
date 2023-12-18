use sales;
select * from customers;
select distinct customer_type from customers;

select * from markets;
select distinct zone from markets;

select * from products;
select distinct product_type from products;

select * from transactions;
select count(*) as totaltransactions from transactions;

select distinct currency from transactions;
select * from transactions where market_code="Mark001";
select sum(sales_amount) from transactions where market_code="Mark001";

select distinct product_code from transactions where market_code="Mark001";

select * from transactions where currency="USD";

select * from date;
select sum(t.sales_amount),d.year from transactions as t join date as d on d.date=t.order_date where d.year='2020'; 
select t.*,d.* from transactions as t join date as d on d.date=t.order_date where d.year='2018';

select sum(t.sales_amount),d.year from transactions as t join date as d on d.date=t.order_date where d.year='2020' and d.month_name="March" and t.market_code='Mark008'; 


select sum(t.sales_amount),d.year from transactions as t join date as d on d.date=t.order_date where d.year='2020' and t.market_code='Mark015';
select sum(t.profit_margin),d.year from transactions as t join date as d on d.date=t.order_date where d.year='2020' and t.market_code='Mark015'; 




