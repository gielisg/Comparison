drop table if exists "informix".item_text ;
create table "informix".item_text 
  (
    item_ref integer not null ,
    seq_no smallint not null ,
    item_text varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

