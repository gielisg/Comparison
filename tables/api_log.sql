drop table if exists "informix".api_log ;
create table "informix".api_log 
  (
    apilog_id integer not null ,
    operation_id varchar(254),
    version char(5),
    user_code char(10),
    role_narr varchar(64,20),
    dt datetime year to fraction(5) 
        default current year to fraction(5) not null 
  );

