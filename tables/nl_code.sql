drop table if exists "informix".nl_code ;
create table "informix".nl_code 
  (
    nl_code char(3) not null ,
    nl_code_narr char(32) not null ,
    nl_order smallint not null ,
    nl_action_narr varchar(80),
    cat_code char(1) not null 
  );

