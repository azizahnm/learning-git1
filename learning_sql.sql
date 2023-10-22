create table batch_32.azizah (
	nama				VARCHAR,
	tempat_lahir		VARCHAR,
	tanggal_lahir		DATE,
	background_studi	VARCHAR,
	jarak_rumah			FLOAT,
	nomor_sepatu		INT
);

insert into batch_32.azizah (nama, tempat_lahir, tanggal_lahir, background_studi, jarak_rumah, nomor_sepatu)
values ('Fitri', 'Ciwidey', '10-06-2008', 'Bahasa', 7.0, 37);
values ('Dian', 'Jawa Tengah', '11-11-2011', 'Biologi', 12.0, 40);

update batch_32.azizah set nama = 'Ari Sulistyo' where background_studi = 'Fisika';

select * from batch_32.azizah
select tempat_lahir, tanggal_lahir from batch_32.azizah

select *
from batch_32.customer_data
where customer_state = 'RS'
limit 10

delete from batch_32.azizah where background_studi = 'Bahasa' and jarak_rumah = 7

select count(distinct product_id)
from batch_32.order_items_data

select *
from batch_32.customer_data
where customer_city like '%paulo%'

select *
from batch_32.customer_data
where customer_city is not in ('sao paulo')

select upper(customer_city) as city_upper,*
from batch_32.customer_data

select *
from batch_32.customer_data
where customer_city lower('sao paulo')

select concat(customer_city, '-', customer_state, '-', customer_zip_code_prefix) as labels
from batch_32.customer_data

select *
from order_items_data

select product_category_name,
	nullif ('no_category', product_category_name) as categ_nullif,
	coalesce (product_category_name, 'no_category') as categ_cleaned
from batch_32.product_data
where product_category_name is null

select date(order_purchase_timestamp) as order_purchase_date,
	   date(date_trunc('month', date(order_purchase_timestamp))) as order_purchase_month,
	   date_part('month', date(order_purchase_timestamp)) as order_purchase_month_number,
	   order_purchase_timestamp
from batch_32.orders_data
where date_part('month', date(order_purchase_timestamp)) = 7

--cara membaca skema data (on medium)