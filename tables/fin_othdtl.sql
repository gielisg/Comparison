drop table if exists "informix".fin_othdtl ;
create table "informix".fin_othdtl 
  (
    fin_ref integer not null ,
    note_order_num integer not null ,
    note_group_num integer not null ,
    note_text lvarchar(1000)
  );

