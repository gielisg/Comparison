drop table if exists "informix".aspnetuseravaroles ;
create table "informix".aspnetuseravaroles 
  (
    id serial not null ,
    userid integer,
    roleid integer,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

