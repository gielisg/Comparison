drop table if exists "informix".veda_chk_usr_map ;
create table "informix".veda_chk_usr_map 
  (
    pegasus_user_id char(10) not null ,
    veda_chk_user_id varchar(100) not null ,
    first_name varchar(30),
    surname varchar(30),
    client_code varchar(30),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

