drop table if exists "informix".contact_id ;
create table "informix".contact_id 
  (
    contact_id serial not null ,
    contact_code char(10) not null ,
    id_type char(1) not null ,
    id_detail varchar(20) not null ,
    exp_date date,
    issue_date date,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

