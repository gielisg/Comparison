drop table if exists "informix".discbenf ;
create table "informix".discbenf 
  (
    discbenfid serial not null ,
    discid integer not null ,
    benftypeid char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

