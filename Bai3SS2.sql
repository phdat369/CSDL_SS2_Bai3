-- Phân tích 
-- 1. Ở bảng order thì mã đơn chúng ta cần để là primary key và kiểu dữ liệu là int, ngày đặt dùng kiểu dữ liệu là date để đầy đủ thông tin đặt hàng và dùng current_date cho default nếu người dùng không nhập gì, tổng tiền thì để kiểu dữ liệu là decimal(10,2) để có số tiền chính xác không bị hao hụt và not null, và mã khách hàng là int vs foreigh key
-- 2. Vì bảng customers là bảng cha nên nếu taohj bảng order trước thì sẽ bị sai 

use cntt3_database;
drop table customers;
create table order (
   order_id int,
   order_date date default(current_date()),
   total_price decimal(10,2) not null,
   customer_id int,
   primary key (order_id),
   foreign key (customer_id) reference customers (customer_id)
); 