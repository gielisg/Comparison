drop table if exists "informix".contr_ext_code ;
create table "informix".contr_ext_code 
  (
    contr_ext_code char(4) not null ,
    contract_code char(4),
    contr_ext_narr char(32) not null ,
    discount decimal(7,3) not null ,
    contr_ext_term smallint not null ,
    commission decimal(6,2) not null ,
    contrextwefr datetime year to second not null ,
    contrextweto datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

