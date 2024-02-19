#1 Given the name of a city (of your choice), show the property ID and the
seller's realtor name of every property in the city that has at least two
bedrooms and two baths
  
select P.PID, Q.NAME
from PROPERTY P
join SELLER S on P.SID=S.SID
join REALTOR Q on Q.RID=S.RID
where P.Room>=2 and P.Bath>=2 and P.City="Springfield";

#2 Given a property ID (of your choice), show the ID, the name, and the bid
price of each buyer who submitted bid for the property

select P.PID, B.Name, D.price
from property P
join bid_history D on P.pid=D.pid
join buyer B on B.BID=D.BID
where P.pid=1;

#3 Show the property ID, the realtor name, and their company of each property
which was listed for longer than 15 days and not closed yet.

select distinct P.PID, Q.Name, Q.Company
from PROPERTY P
join SELLER S on P.SID=S.SID
join REALTOR Q on Q.RID=S.RID
left join Bid_history D on D.PID=P.PID
where D.pid is null or D.CloseDate is null and DATEDIFF(NOW(), P.ListDate) > 15
order by P.PID;

#4 Show the list of properties which does not have any bid. For each property,
show the property ID, the city, and the realtor name. 

select P.PID, Q.Name, P.City
from PROPERTY P
join SELLER S on P.SID=S.SID
join REALTOR Q on Q.RID=S.RID
left join Bid_history D on D.PID=P.PID
where D.PID is NULL;

#5 For all properties that have been closed, calculate and show the average
listing time. The listing time of a closed property is the difference between
close date and the list date. 

select  AVG(DISTINCT datediff(b.CloseDate,p.ListDate)) as average_listing_time
from property p 
join bid_history b on  p.pid=b.pid
where b.closedate is not null;
