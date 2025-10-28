drop table if exists "informix".ord_del_dtl ;
create table "informix".ord_del_dtl 
  (
    ord_id integer not null ,
    del_dtl_ref integer not null ,
    issue_dt datetime year to second 
        default current year to second not null 
  );

