drop table if exists "informix".contact_question ;
create table "informix".contact_question 
  (
    id serial not null ,
    contact_code char(10) not null ,
    question_id integer,
    question varchar(254),
    question_ans varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

