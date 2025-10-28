drop table if exists "informix".inst_order ;
create table "informix".inst_order 
  (
    inst_id integer not null ,
    ord_id integer not null ,
    ord_line_num smallint not null 
  );

