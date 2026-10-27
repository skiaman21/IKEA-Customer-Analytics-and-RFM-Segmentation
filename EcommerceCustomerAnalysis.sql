create table Year_2009to2010(
	Invoice varchar(50),
	StockCode varchar(50),
	Description varchar(50),
	Quantity int,
	InvoiceDate timestamp,
	Price float,
	CustomerID int,
	Country varchar(50)
);

create table Year_2010to2011(
	Invoice varchar(50),
	StockCode varchar(50),
	Description varchar(50),
	Quantity int,
	InvoiceDate timestamp,
	Price float,
	CustomerID int,
	Country varchar(50)
);

--Copying the data into tables
copy Year_2009to2010
from 'D:\Data Analysis\Python\IKEA\IKEA Gifting Dataset\IKEA Gifting Dataset\online_retail_II page 1.csv'
delimiter ','
csv header;

copy Year_2010to2011
from 'D:\Data Analysis\Python\IKEA\IKEA Gifting Dataset\IKEA Gifting Dataset\online_retail_II page 2.csv'
delimiter ','
csv header;


--Changing the data type of Price Column to decimal 
alter table Year_2009to2010
alter column Price type numeric(10,2);

alter table Year_2010to2011
alter column Price type numeric(10,2);

--Combine both years
CREATE TABLE RetailCombined AS
select Invoice,StockCode,Description,Quantity,InvoiceDate,Price,CustomerID,Country from Year_2009to2010
union all
select Invoice,StockCode,Description,Quantity,InvoiceDate,Price,CustomerID,Country from Year_2010to2011;



--confirm the conversion worked cleanly
select count(*) as total_rows from RetailCombined;

--Check 1 -- Missing Customer ID
select count(*) as Missing_CustomerID from retailcombined 
where CustomerID is null;

--Check 2 -- Negative or Zero Quantity
select count(*) as Negative_Qty from retailcombined where
Quantity<=0;

--Check 3 -- Missing Description
select count(*) as Missing_Descrption from retailcombined 
where Description is null;

--Check 4 -- Duplicate rows
select Invoice,StockCode,Description,Quantity,InvoiceDate,Price,CustomerID,Country, count(*) as Duplicate from retailcombined
group by Invoice,StockCode,Description,Quantity,InvoiceDate,Price,CustomerID,Country
having count(*)>1;

--Remove the Duplicated value and produce the final cleaned table
CREATE TABLE RetailCleared AS
with cte as (
select *, 
row_number() over(partition by Invoice,StockCode,Description,Quantity,InvoiceDate,Price,CustomerID,Country) as rownum
from retailcombined
)
select * from cte where rownum=1;


select * from retailcleared;

COPY (
    SELECT * FROM retailcleared
) TO 'D:\Data Analysis\dataset\RetailCleared.csv' 
WITH (FORMAT CSV, HEADER, QUOTE '"', ESCAPE '"');










