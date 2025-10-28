drop table if exists "informix".disccomscent ;
create table "informix".disccomscent 
  (
    discid integer not null ,
    discccbndlex decimal(10,2) not null ,
    discccinclex decimal(10,2) not null ,
    discccexcsrate decimal(6,2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

