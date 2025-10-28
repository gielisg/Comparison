drop table if exists "informix".corr_dest_addr ;
create table "informix".corr_dest_addr 
  (
    corr_id integer not null ,
    address_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

