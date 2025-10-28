drop table if exists "informix".pl_dtl_tmp ;
create table "informix".pl_dtl_tmp 
  (
    pl_id integer not null ,
    line_num smallint not null ,
    ord_id integer not null ,
    ord_line_num smallint not null ,
    status_id smallint not null ,
    status_dt datetime year to second 
        default current year to second,
    qty smallint,
    courier_code char(4),
    con_note_num integer,
    ord_group_num integer,
    prod_code char(20)
  );

