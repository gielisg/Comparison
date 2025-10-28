drop table if exists "informix".dcelsvin ;
create table "informix".dcelsvin 
  (
    disceligid integer not null ,
    svintypeid char(6) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

