-- Вывести ко-во поставщиков не из UK и не из China
-- SELECT 
--   count(*)
-- FROM suppliers
-- WHERE country not in ('UK', 'China')

-- Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
-- SELECT 
--   round(avg(price)),
--   max(price),
--   min(price),
--   count(*)
-- FROM products
-- WHERE CategoryID in (3,5);

-- Вывести общую сумму проданных товаров
-- select 
--   sum(t2.price * t1.quantity)
-- from orderdetails t1
-- inner join products t2
-- on t1.ProductID = t2.ProductID

-- Вывести ко-во стран, которые поставляют напитки
-- select 
--   count( DISTINCT t3.country)
-- from categories t1 
-- inner join products t2 on t1.CategoryID = t2.CategoryID
-- inner join suppliers t3 on t2.SupplierID = t3.SupplierID
-- where t1.CategoryName = 'Beverages'

-- Вывести сумму, на которую было отправлено товаров клиентам в USA
-- select
--   round(sum(t4.price * t2.quantity))
-- from orders t1 
-- inner join orderdetails t2 on t1.OrderID = t2.OrderID
-- inner join customers t3 on t3.CustomerID = t1.CustomerID
-- inner join products t4 on t2.ProductID = t4.ProductID
-- where t3.Country = 'USA'

