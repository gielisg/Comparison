drop table if exists "informix".pay_source_chgs ;
create table "informix".pay_source_chgs 
  (
    pay_provider integer not null ,
    pay_code char(2) not null ,
    pay_source_id integer not null ,
    surcharge_amnt decimal(8,3) 
        default 0.000 not null ,
    surcharge_perc decimal(6,3) 
        default 0.000 not null ,
    surchg_min_amnt decimal(8,3) 
        default 0.000 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

