drop table if exists "informix".ordritemacttype ;
create table "informix".ordritemacttype 
  (
    acttype char(10) not null ,
    acttype_desc varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

