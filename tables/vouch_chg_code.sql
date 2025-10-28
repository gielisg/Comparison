drop table if exists "informix".vouch_chg_code ;
create table "informix".vouch_chg_code 
  (
    type_id char(2) not null ,
    chg_code char(4) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

