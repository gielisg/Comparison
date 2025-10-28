drop table if exists "informix".ott_failed_attempt ;
create table "informix".ott_failed_attempt 
  (
    id serial not null ,
    contact_code char(10),
    application varchar(80) not null ,
    ott_id integer,
    type varchar(20),
    token_entered varchar(254),
    email varchar(254),
    mobile varchar(20),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

