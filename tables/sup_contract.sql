drop table if exists "informix".sup_contract ;
create table "informix".sup_contract 
  (
    sup_contr_code char(4) not null ,
    sup_contr_narr varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

