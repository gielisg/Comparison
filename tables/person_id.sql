drop table if exists "informix".person_id ;
create table "informix".person_id 
  (
    contact_code char(10) not null ,
    id_type char(1) not null ,
    id_detail varchar(20) not null ,
    exp_date date,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

