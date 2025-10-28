drop table if exists "informix".cuni_card ;
create table "informix".cuni_card 
  (
    cuni_card_code char(15) not null ,
    cuni_card_narr varchar(32) not null 
  );

