drop table if exists "informix".inbnd_elg ;
create table "informix".inbnd_elg 
  (
    sp_cn_ref integer not null ,
    call_date date not null ,
    timebandcode char(4) not null ,
    answer_point varchar(32) not null ,
    erlang integer 
        default 0 not null 
  );

