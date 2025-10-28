drop table if exists "informix".autochgeltyp ;
create table "informix".autochgeltyp 
  (
    autochgeltypid char(2) not null ,
    autochgeltypnarr varchar(64,1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

