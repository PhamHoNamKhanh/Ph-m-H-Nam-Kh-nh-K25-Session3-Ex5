/*
Khi khách hàng nhập số lượng âm có thể kiểm tra bằng lệnh check ->
không cho nhập liệu
Với sản phẩm đã có sẵn -> tăng số lượng sản phẩm

*/
create database shopping_cart;
use shopping_cart;
create table cartItems(
cartId int primary key auto_increment,
userId int,
productId int,
quantity int,
addedDate datetime default (current_date())
);
insert into cartItems (userId, productId, quantity)
values
(1,1,1);
select userId, cartId, quantity, addedDate from cartItems;
-- + quantity
update cartItems
set quantity  = quantity+ 1
where productId = 1;
update cartItems
set quantity = 5
where productId = 1;
delete from cartItems where productId = 1;
