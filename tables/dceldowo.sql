drop table if exists "informix".dceldowo ;
create table "informix".dceldowo 
  (
    disceligid integer not null ,
    dceldowodow integer,
    dceldowooccr integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dceldowodow IN (0 ,1 ,2 ,3 ,4 ,5 ,6 )) constraint "informix".check
    
    check (dceldowooccr IN (1 ,2 ,3 ,4 ,5 )) constraint "informix".check
  );

