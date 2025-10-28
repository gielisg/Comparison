drop table if exists "informix".rsllinestat ;
create table "informix".rsllinestat 
  (
    rsllinestatid serial not null ,
    service char(20) not null ,
    status_dt datetime year to second not null ,
    account_code char(20),
    date_created datetime year to fraction(3),
    account_stat varchar(100,30),
    carrier_desc varchar(50,10),
    presel_stat varchar(100,30),
    rsl_stat_date datetime year to fraction(3),
    last_used_out datetime year to fraction(3)
  );

