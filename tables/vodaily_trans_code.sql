drop table if exists "informix".vodaily_trans_code ;
create table "informix".vodaily_trans_code 
  (
    trans_code varchar(6) not null ,
    trans_desc varchar(100) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

