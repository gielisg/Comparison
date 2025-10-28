drop table if exists "informix".generic_list ;
create table "informix".generic_list 
  (
    list_id char(5) not null ,
    key varchar(128,10) not null ,
    value varchar(254) not null ,
    disp_order integer 
        default 0 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

