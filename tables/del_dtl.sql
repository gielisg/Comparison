drop table if exists "informix".del_dtl ;
create table "informix".del_dtl 
  (
    del_dtl_ref serial not null ,
    address_ref integer not null ,
    del_contact_txt varchar(40),
    del_instruct varchar(200),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

