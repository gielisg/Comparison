drop table if exists "informix".paycollstephist ;
create table "informix".paycollstephist 
  (
    pcstephistref serial not null ,
    paycollstepref integer not null ,
    paycollstatcode char(4),
    pcstephistwefr datetime year to second not null ,
    pcstephistweto datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

