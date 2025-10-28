drop table if exists "informix".serv_class_chgs ;
create table "informix".serv_class_chgs 
  (
    class_id char(1) not null ,
    wef date not null ,
    chg_code char(4) not null ,
    wet date,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

