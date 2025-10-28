drop table if exists "informix".fin_hdr_prod_id ;
create table "informix".fin_hdr_prod_id 
  (
    ser serial not null ,
    fin_prod_ref integer not null ,
    id varchar(254,10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

