drop table if exists "informix".evnt_set_dtl_rel ;
create table "informix".evnt_set_dtl_rel 
  (
    prnt_set_dtl_ref integer not null ,
    chld_set_dtl_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

