drop table if exists "informix".phone_num_alias ;
create table "informix".phone_num_alias 
  (
    alias_num varchar(64) not null ,
    phone_num varchar(64) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

