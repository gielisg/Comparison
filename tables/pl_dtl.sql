drop table if exists "informix".pl_dtl ;
create table "informix".pl_dtl 
  (
    pl_id integer not null ,
    line_num smallint not null ,
    ord_id integer not null ,
    ord_line_num smallint not null ,
    status_id smallint not null ,
    status_dt datetime year to second,
    qty smallint not null ,
    courier_code char(4),
    con_note_num integer
  );

