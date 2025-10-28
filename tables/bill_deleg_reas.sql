drop table if exists "informix".bill_deleg_reas ;
create table "informix".bill_deleg_reas 
  (
    reason_id serial not null ,
    reason_narr varchar(254) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

