#Q1 Trigger
delimiter //
create trigger bid_date
  before insert on bid_history
  for each row
begin
  declare l_date date;
     select p.ListDate into l_date
     from property p
     where p.PID=new.PID;

  if new.Date < l_date then
     signal SQLSTATE '45000'
       set message_text = 'BID DATE CANT BE BEFORE LISTED DATE';
  end if;
end //
delimiter ;

insert into bid_history
    values(3, 101, '2023-10-08', 210000, null, null);
    
insert into bid_history
    values(3, 101, '2023-10-03', 210000, null, null);


#Q2 Trigger
delimiter //
create trigger Realtor
   before insert on bid_history
   for each row
begin
  declare Realtor1 int;
  declare Realtor2 int;
      select RID into Realtor1
      from buyer 
	  where BID=new.BID;

      select s.RID into Realtor2
      from seller s, property p
      where s.SID=p.SID and PID=new.PID;
  if Realtor1=Realtor2 then 
       signal SQLSTATE '45000' 
            set message_text='Realtor cannot be the same';
  end if;
end //
delimiter ;

insert into bid_history
    values(6, 103, '2023-10-10', 70000, null, null);
insert into bid_history
    values(3, 105, '2023-10-10', 70000, null, null);
    
    
#Q3 Trigger
Delimiter //
create trigger bid_price
   before insert on bid_history
   for each row
begin 
   declare lowest_price int;
   
      select price into lowest_price 
      from bid_history
      where PID=new.PID
      order by price asc
      limit 1;
if lowest_price > new.Price then 
     signal SQLSTATE '45000' 
        set message_text='bid price cannot be less than the current lowest';
end if;
end //
delimiter ;

insert into bid_history
    values(1, 101, '2023-10-08', 180000, null, null); 

insert into bid_history
    values(1, 101, '2023-10-08', 150000, null, null);    

#Q4 Stored Procedure
DELIMITER $$

CREATE PROCEDURE get_highest_bidder(IN PID INT)
BEGIN
    DECLARE buyer_name VARCHAR(50);
    DECLARE buyer_realtor VARCHAR(50);
    DECLARE highest_bid DECIMAL(10, 2);

    SELECT bu.Name, r.Name, b.Price
    INTO buyer_name, buyer_realtor, highest_bid
    FROM bid_history b
    INNER JOIN buyer bu ON b.BID = bu.BID
    INNER JOIN realtor r ON bu.RID = r.RID
    WHERE b.PID = PID
    ORDER BY b.Price DESC
    LIMIT 1;

    SELECT buyer_name AS 'Buyer Name', Buyer_realtor AS 'Buyer Realtor', highest_bid AS 'Bid Price';
END $$
call houseforsale.get_highest_bidder(4);