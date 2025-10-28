drop table if exists "informix".statobj ;
create table "informix".statobj 
  (
    statobjname varchar(128) not null ,
    statobjignore char(1) 
        default 'N' not null ,
    statobjstdt datetime year to second,
    statobjlast datetime year to second,
    
    check (statobjignore IN ('Y' ,'N' )) constraint "informix".yes_no
  );

