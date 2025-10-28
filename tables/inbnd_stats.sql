drop table if exists "informix".inbnd_stats ;
create table "informix".inbnd_stats 
  (
    sp_cn_ref integer not null ,
    call_date date not null ,
    timebandcode char(4) not null ,
    call_status smallint not null ,
    answer_point varchar(32) not null ,
    call_exchange varchar(32) not null ,
    call_state char(3) not null ,
    call_count integer 
        default 0 not null ,
    duration integer 
        default 0 not null 
  );

