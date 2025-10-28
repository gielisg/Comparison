drop table if exists "informix".svintype ;
create table "informix".svintype 
  (
    svintypeid char(6) not null ,
    svintypenarr varchar(32) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

