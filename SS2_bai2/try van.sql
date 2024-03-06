use quanlibanhang;
#Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oID,oDate,ototalPrice
from order1 ;
#Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select  C.name ,P.pnamecustomer
from customer C join order1 O on C.cid=O.cID
join orderdetail on orderdetail.oID=O.oID
join product P on P.pid=orderdetail.pid;
#Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select name
from Customer 
where cID not in (select cID from order1);
#Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select O.oid,O.oDate,sum(odQTY*pPrice) 'tong tien'
from order1 O join orderdetail on O.oID=orderdetail.oID
join product P on orderdetail.pID=P.pID
GROUP BY
    O.oID;