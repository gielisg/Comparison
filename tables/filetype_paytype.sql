drop table if exists "informix".filetype_paytype ;
create table "informix".filetype_paytype 
  (
    file_type_code char(10) not null ,
    pay_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

