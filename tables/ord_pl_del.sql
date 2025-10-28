drop table if exists "informix".ord_pl_del ;
create table "informix".ord_pl_del 
  (
    ser_num serial not null ,
    ord_id integer not null ,
    ord_line_num smallint not null ,
    pl_id integer not null ,
    del_reason varchar(50,20) not null ,
    del_dt datetime year to second 
        default current year to second not null 
  );

