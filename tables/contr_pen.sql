drop table if exists "informix".contr_pen ;
create table "informix".contr_pen 
  (
    contr_pen_code char(2) not null ,
    contr_pen_narr varchar(64) not null ,
    contr_pen_leng integer 
        default null,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

