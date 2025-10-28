drop table if exists "informix".site_addr ;
create table "informix".site_addr 
  (
    siteid integer not null ,
    address_ref integer not null ,
    site_id1 integer,
    site_id2 integer,
    wefr_date date 
        default today not null ,
    weto_date date 
        default  '01/01/9999' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

