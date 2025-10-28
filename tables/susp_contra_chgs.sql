drop table if exists "informix".susp_contra_chgs ;
create table "informix".susp_contra_chgs 
  (
    susp_code char(4) not null ,
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

