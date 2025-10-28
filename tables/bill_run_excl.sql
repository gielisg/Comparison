drop table if exists "informix".bill_run_excl ;
create table "informix".bill_run_excl 
  (
    excl_ref serial not null ,
    debtor_code char(10) not null ,
    period_start integer not null ,
    period_end integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

