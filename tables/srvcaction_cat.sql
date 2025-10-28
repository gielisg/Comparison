drop table if exists "informix".srvcaction_cat ;
create table "informix".srvcaction_cat 
  (
    srvcact_cat_code char(6) not null ,
    srvcact_cat_narr varchar(40,6) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

