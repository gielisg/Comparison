drop table if exists "informix".taxtreatment ;
create table "informix".taxtreatment 
  (
    taxtreatmentcode char(1) not null ,
    taxtreatmentnarr varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

