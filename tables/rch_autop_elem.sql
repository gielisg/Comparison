drop table if exists "informix".rch_autop_elem ;
create table "informix".rch_autop_elem 
  (
    rch_autop_elem_id serial not null ,
    auto_purch_ref integer not null ,
    element_id integer not null ,
    min_balance decimal(10,3) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

