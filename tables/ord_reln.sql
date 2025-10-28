drop table if exists "informix".ord_reln ;
create table "informix".ord_reln 
  (
    ord_relnid1 integer not null ,
    ord_relnid2 integer not null ,
    relntypeid char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

