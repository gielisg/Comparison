drop table if exists "informix".inv_grp ;
create table "informix".inv_grp 
  (
    invoice_grp char(2) not null ,
    inv_grp_narr varchar(32) not null ,
    inv_grpdispordr integer 
        default 3 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

