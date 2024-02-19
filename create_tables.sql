create database HouseForSale;
use HouseForSale;

create table PROPERTY
  ( PID      int primary key,
    City     varchar(20),
    Type     varchar(20),
    Room     int,
    Bath     int,
    SF       int,
    Allowancce int,
    ListDate    date,
    SID       int,
    foreign key (SID) references SELLER(SID) 
    on delete cascade
    on update cascade
    );
create table BUYER
 ( BID        int primary key,
  Preapproved  varchar(20),
  Name         varchar(20),  
  Phone       varchar(20),
  RID         int,
  foreign key(RID) references REALTOR(RID)
  on delete cascade
  on update cascade
   );
create table BID_HISTORY
	  ( PID     int,
		BID      int,
		Date     date,
		Price    int,
		CloseDate    date,
		Closeprice   int,
		foreign key(PID) references PROPERTY(PID),
		foreign key(BID) references BUYER(BID)
	  );
create table REALTOR
  (RID    int primary key,
  Name    varchar(20),
  Company  varchar(20),
  BuyerFee   int,
  SellerFee   int
  );
create table SELLER
  (SID    int primary key,
  Motivated  varchar(20),
  Name       varchar(20),
  Phone      varchar(20),
  RID        int,
  foreign key(RID) references REALTOR(RID)
  on delete restrict
  on update no action
  );