drop table if exists "informix".bulkloadstat ;
create table "informix".bulkloadstat 
  (
    bulkloadstatcode char(10) not null ,
    bulkloadstatnarr varchar(32) not null ,
    bulkloadstatdesc varchar(255) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

