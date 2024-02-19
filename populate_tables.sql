insert into PROPERTY
   values(1, 'Boston', 'Ranch', 2, 1, 650, null, '2023-10-04', 201);
insert into PROPERTY
   values (2, 'Cambridge', 'Colonial', 3, 2, 1200, null, '2023-10-06', 202);
insert into PROPERTY
   values(3, 'Worcester', 'capecod', 3, 1, 1100, null, '2023-10-07', 203);
insert into PROPERTY
   values(4, 'Springfield', 'Colonial', 4, 2, 1500, null, '2023-10-14', 201);
insert into PROPERTY
   values(5, 'Lowell', 'Ranch', 1, 1, 500, null, '2023-10-11', 204);
insert into PROPERTY
   values(6, 'Amherst', 'Colonial', 2, 1, 670, null, '2023-10-12', 203);
insert into PROPERTY
   values(7, 'Newton', 'capecod', 3, 2, 1230, null, '2023-10-05', 203);
insert into PROPERTY
   values(8, 'Boston', 'Ranch', 3, 1, 1120, null, '2023-10-08', 204);
insert into PROPERTY
   values(9, 'Boston', 'capecod', 4, 2, 1520, null, '2023-10-09', 203);
insert into PROPERTY
   values(10, 'Cambridge', 'capecod', 1, 1, 500, null, '2023-10-02', 201);
insert into PROPERTY
   values(11, 'Cambridge', 'Colonial', 2, 1, 650, null, '2023-10-01', 205);
insert into PROPERTY
   values(12, 'Worcester', 'capecod', 3, 2, 1230, null, '2023-10-02', 203);
insert into PROPERTY
   values(13, 'Worcester', 'Ranch', 3, 1, 1120, null, '2023-10-03', 201);
insert into PROPERTY
   values(14, 'Springfield', 'Colonial', 4, 2, 1520, null, '2023-10-04', 202);
insert into PROPERTY
   values(15, 'Springfield', 'capecod', 1, 1, 500, null, '2023-10-05', 204);
insert into PROPERTY
   values(16, 'Lowell', 'Colonial', 2, 1, 370, null, '2023-10-06', 203);
     insert into PROPERTY
   values(17, 'Lowell', 'Ranch', 3, 2, 1250, null, '2023-10-07', 201);
     insert into PROPERTY
   values(18, 'Amherst', 'Colonial', 3, 1, 1150, null, '2023-10-08', 204);
     insert into PROPERTY
   values(19, 'Amherst', 'capecod', 4, 2, 1480, null, '2023-10-09', 203);
     insert into PROPERTY
   values(20, 'Newton', 'Colonial', 1, 1, 500, null, '2023-10-05', 202);
   
insert into BUYER
values (101, 'yes', 'Mohan', '121-123-4567', 302);
   insert into BUYER
values (102, 'yes', 'Kishan', '587-987-6543', 302);
    insert into BUYER
values(103, 'yes', 'Ravi', '854-234-5678', 303);
    insert into BUYER
values(104, 'No', 'Saran', '698-432-1098', 304);
    insert into BUYER
values(105, 'No', 'Saiteja', '258-765-4321', 301);

insert into BID_HISTORY
    values(1, 101, '2023-10-05', 170000, '2023-10-22', 180000);
insert into BID_HISTORY
    values(1, 102, '2023-10-06', 180000, '2023-10-22', 180000);
insert into BID_HISTORY
    values (1, 103, '2023-10-07', 160000, '2023-10-22', 180000);
insert into BID_HISTORY
     values(2, 103, '2023-10-07', 350000, '2023-10-15', 360000);
insert into BID_HISTORY
      values(2, 104, '2023-10-08', 360000, '2023-10-15', 360000);
insert into BID_HISTORY
      values(3, 105, '2023-10-07', 350000, null, null);
insert into BID_HISTORY
      values(4, 101, '2023-10-14', 420000, null, null);
insert into BID_HISTORY
      values(5, 102, '2023-10-11', 90000, null, null);
insert into BID_HISTORY
      values(6, 103, '2023-10-12', 130000, null, null);
insert into BID_HISTORY
      values(7, 104, '2023-10-05', 250000, null, null);
insert into BID_HISTORY
      values(8, 105, '2023-10-08', 385000, '2023-10-26', 385000);
insert into BID_HISTORY
      values(9, 101, '2023-10-09', 480000, '2023-10-21', 480000);
insert into BID_HISTORY
      values(10, 102, '2023-10-02', 80000, '2023-10-08', 120000);
insert into BID_HISTORY
      values(11, 103, '2023-10-01', 150000, null, null);
insert into BID_HISTORY
      values(12, 104, '2023-10-02', 350000, '2023-10-07', 400000);
insert into BID_HISTORY
      values(13, 105, '2023-10-03', 320000, null, null);
insert into BID_HISTORY
     values(14, 101, '2023-10-04', 400000, null, null);
insert into BID_HISTORY
     values (15, 102, '2023-10-05', 90000, null, null);
insert into BID_HISTORY
     values(16, 103, '2023-10-06', 120000, null, null);
insert into BID_HISTORY
     values(17, 104, '2023-10-07', 300000, null, null);
insert into BID_HISTORY
     values(17, 105, '2023-10-08', 320000, null, null);
insert into BID_HISTORY
     values (10, 101, '2023-10-04', 120000, '2023-10-08', 120000);
insert into BID_HISTORY
     values(10, 102, '2023-10-02', 85000, '2023-10-08', 120000);
insert into BID_HISTORY
     values(10, 103, '2023-10-02', 87000, '2023-10-08', 120000);
insert into BID_HISTORY
     values(4, 104, '2023-10-14', 350000, null, null);
insert into BID_HISTORY
    values(4, 105, '2023-10-14', 400000, null, null);
insert into BID_HISTORY
	values(4, 102, '2023-10-14', 290000, null, null);
insert into BID_HISTORY
    values(12, 103, '2023-10-02', 300000, '2023-10-07', 400000);
insert into BID_HISTORY
    values(12, 102, '2023-10-02', 400000, '2023-10-07', 400000);
insert into BID_HISTORY
    values(12, 101, '2023-10-02', 270000, '2023-10-07', 400000);

insert into REALTOR
values (301, 'Yaganti', 'Tata', 1, 1.5);
    insert into REALTOR
values(302, 'Pioneer', 'L&T', 1.5, 1.5);
    insert into REALTOR
values(303, 'Siribhoomi', 'ICICI', 1, 2);
    insert into REALTOR
values(304, 'Suwarna', 'BCG', 1.5, 1.5);
    insert into REALTOR
values(305, 'Vasavi', 'Bain', 1, 2);

insert into SELLER
values(201, 'yes', 'Harsha', '123-456-7891', 303);
    insert into SELLER
values(202, 'yes', 'Shastri', '135-546-8792', 303);
    insert into SELLER
values(203, 'yes', 'Sanjay', '358-548-5978', 301);
    insert into SELLER
values(204, 'yes', 'Dinesh', '589-897-5579', 304);
    insert into SELLER
values(205, 'yes', 'Akash', '321-457-8751', 305);