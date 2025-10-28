drop table if exists "informix".corr_dest_type ;
create table "informix".corr_dest_type 
  (
    dest_type_code char(1) not null ,
    dest_narr varchar(64),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dest_type_code IN ('T' ,'F' ,'C' ,'B' ,'R' )) constraint "informix".dest_type_code
  );

