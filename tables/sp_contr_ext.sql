drop table if exists "informix".sp_contr_ext ;
create table "informix".sp_contr_ext 
  (
    sp_contr_ext_num serial not null ,
    spcncontract_ref integer not null ,
    ext_start_date datetime year to second not null ,
    contr_ext_code char(4) not null ,
    old_end_date datetime year to second not null ,
    salesperson char(10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

