drop table if exists "informix".prodsets ;
create table "informix".prodsets 
  (
    prntprodcode varchar(194) not null ,
    chldprodcode varchar(194) not null ,
    prodsetsqnty integer 
        default 1 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

