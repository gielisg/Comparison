drop table if exists "informix".period_ctrl ;
create table "informix".period_ctrl 
  (
    event_type char(2) not null ,
    event_code char(2) not null ,
    sequence smallint not null ,
    processes integer,
    log_count integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

