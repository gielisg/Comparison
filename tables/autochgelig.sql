drop table if exists "informix".autochgelig ;
create table "informix".autochgelig 
  (
    autochgeligid serial not null ,
    autochgid integer not null ,
    autochgeltypid char(2) not null ,
    autochgeligexcl char(1) 
        default 'N' not null ,
    autochgeligordr integer 
        default 3 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (autochgeligexcl IN ('Y' ,'N' )) constraint "informix".yes_no
  );

