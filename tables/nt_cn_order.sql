drop table if exists "informix".nt_cn_order ;
create table "informix".nt_cn_order 
  (
    ord_id integer not null ,
    ord_line_num smallint not null ,
    nt_cn_ref integer not null 
  );

