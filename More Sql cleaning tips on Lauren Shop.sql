select cast(purchase_price as float)
from GoogleAnalystics..Lauren_shop
order by cast(purchase_price as float) desc

--Whole Data 
select *
from GoogleAnalystics..Lauren_shop

select purchase_price,cast(date as date) as date_only
from GoogleAnalystics..Lauren_shop
where date between '2020-12-01' and '2020-12-31'

select CONCAT(product_code,product_color) as new_product_code
from GoogleAnalystics..Lauren_shop
where product = 'couch'

--Very important to fill null values
select coalesce(product,product_code) as product_info
from GoogleAnalystics..Lauren_shop

