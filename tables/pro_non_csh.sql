drop table if exists "informix".pro_non_csh ;
create table "informix".pro_non_csh 
  (
    pro_code char(5) not null ,
    dsc_type_id char(2) not null ,
    dsc_info varchar(254,20) not null ,
    dsc_value decimal(6,2) 
        default 0.00 not null 
  );

