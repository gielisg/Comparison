drop table if exists "informix".ordritemdisp ;
create table "informix".ordritemdisp 
  (
    ordritemdispid serial not null ,
    ordritemid integer not null ,
    ordritemdispqnty integer not null ,
    stck_id integer not null ,
    stckcode varchar(20),
    consnotenum varchar(15) not null ,
    ordritemdispdate date not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

