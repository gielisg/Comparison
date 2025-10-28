drop table if exists "informix".ord_grp_dtl ;
create table "informix".ord_grp_dtl 
  (
    ord_group_num integer not null ,
    ord_id integer not null ,
    ord_line_num smallint not null 
  );

