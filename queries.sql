select P.PID, Q.NAME
from PROPERTY P
join SELLER S on P.SID=S.SID
join REALTOR Q on Q.RID=S.RID
where P.Room>=2 and P.Bath>=2 and P.City="Springfield";

select P.PID, B.Name, D.price
from property P
join bid_history D on P.pid=D.pid
join buyer B on B.BID=D.BID
where P.pid=1;

select distinct P.PID, Q.Name, Q.Company
from PROPERTY P
join SELLER S on P.SID=S.SID
join REALTOR Q on Q.RID=S.RID
left join Bid_history D on D.PID=P.PID
where D.pid is null or D.CloseDate is null and DATEDIFF(NOW(), P.ListDate) > 15
order by P.PID;

select P.PID, Q.Name, P.City
from PROPERTY P
join SELLER S on P.SID=S.SID
join REALTOR Q on Q.RID=S.RID
left join Bid_history D on D.PID=P.PID
where D.PID is NULL;

select  AVG(DISTINCT datediff(b.CloseDate,p.ListDate)) as average_listing_time
from property p 
join bid_history b on  p.pid=b.pid
where b.closedate is not null;