drop table if exists "informix".fin_bill_rel ;
create table "informix".fin_bill_rel 
  (
    fin_ref integer not null ,
    bill_ref integer not null ,
    rel_dt datetime year to second not null ,
    fin_stat_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

