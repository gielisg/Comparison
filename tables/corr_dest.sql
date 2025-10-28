drop table if exists "informix".corr_dest ;
create table "informix".corr_dest 
  (
    corr_dest_ref serial not null ,
    corr_id integer not null ,
    dest_type_code char(1) not null ,
    destination varchar(255),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dest_type_code IN ('T' ,'F' ,'C' ,'B' ,'R' )) constraint "informix".dest_type_code2
  );

