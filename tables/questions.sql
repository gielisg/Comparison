drop table if exists "informix".questions ;
create table "informix".questions 
  (
    question_id serial not null ,
    question_narr varchar(254) not null ,
    dispordr integer 
        default 3 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

