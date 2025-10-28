drop table if exists "informix".titles ;
create table "informix".titles 
  (
    title_code varchar(10) not null ,
    title_value varchar(10) not null ,
    disp_order integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

