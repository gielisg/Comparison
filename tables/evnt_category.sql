drop table if exists "informix".evnt_category ;
create table "informix".evnt_category 
  (
    event_cat_code char(2) not null ,
    event_cat_narr char(32) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

