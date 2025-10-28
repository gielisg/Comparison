drop table if exists "informix".ord_spconnection ;
create table "informix".ord_spconnection 
  (
    ordrid integer not null ,
    sp_cn_ref integer not null ,
    note varchar(254),
    ordritemstatcode char(4) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

