SELECT sum (total) as total_revenue
from invoice

select count (*) as total_orders,
round(avg(total),2) as avg_order_value
from invoice

select strftime('%Y-%m', invoicedate) as month ,sum(Total) as revenue from Invoice
group by month
order by month 

with monthly_revenue AS (select strftime('%Y-%m', invoicedate) as month ,sum(Total) as revenue from Invoice
group by month)
SELECT
m1.month,
m1.revenue as revenue,
m0.revenue as prev_revenue,
(m1.revenue-m0.revenue) as revenue_change,
case 
when m0.revenue is NULL or m0.revenue = 0 then NULL
else round((m1.revenue - m0.revenue) *100 / m0.revenue,2)
end as mom_growth_pct
from monthly_revenue m1
left join monthly_revenue m0
on m0.month = strftime('%Y-%m', date(m1.month || '-01', '-1 month'))
order by mom_growth_pct DESC

select count (DISTINCT customerid) from Invoice

select customerid, count(invoiceid) as order_count
from Invoice
group by customerid;

SELECT CustomerId,
       MIN(InvoiceDate) AS first_purchase_date
FROM Invoice
GROUP BY CustomerId;

select strftime('%Y-%m', first_purchase_date) as month,
count(customerid) as new_customers 
from(
select customerid, min(invoicedate) as first_purchase_date
from Invoice
group by customerid)
group by month
order by month

with first_purchase as (
  SELECT
  customerid,
  strftime('%Y-m', MIN(invoicedate)) as first_month
  from Invoice
  group by customerid
  ),
customer_months as (
  SELECT
  customerid,
  strftime('%Y-%m', invoicedate) as month
  from Invoice
  group by customerid, month
  )
  SELECT
  cm.month,
  sum(case when cm.month > fp.first_month then 1 else 0 end) as returning_customers
  from customer_months cm
  join first_purchase fp
  on fp.customerid = cm.customerid
  group by cm.month
  order by cm.month

SELECT
t.TrackId,
t.name as track_name,
sum(il.unitprice * il.quantity) as revenue
from InvoiceLine il
join Track t 
on t.trackid = il.trackid
group by t.TrackId, t.name
order by revenue desc

SELECT
ar.name as artist,
round(sum(il.unitprice * il.quantity),2) as revenue
from InvoiceLine il
join Track t on t.trackid = il.trackid
join album al on al.AlbumId = t.AlbumId
join Artist ar on ar.artistid = al.ArtistId
group by ar.ArtistId,  ar.Name
order by revenue DESC
limit 10;

SELECT
g.name as genre,
round(sum(il.unitprice * il.quantity),2) as revenue
from InvoiceLine il
join Track t on t.trackid = il.trackid
join Genre g on g.GenreId = t.GenreId
group by g.GenreId,  g.Name
order by revenue DESC
