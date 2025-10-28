drop table if exists "informix".correspondence ;
create table "informix".correspondence 
  (
    corr_id serial not null ,
    corr_type_code char(1) not null ,
    corr_hdr varchar(255),
    corr_status_code char(1) 
        default 'O' not null ,
    event_ref integer not null ,
    template_id integer,
    sent_dt datetime year to second,
    answered_dt datetime year to second,
    corr_num char(10) not null ,
    task_id integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (corr_status_code IN ('C' ,'E' ,'H' ,'O' ,'R' ,'U' ,'S' )) constraint "informix".corr_stat_code2,
    
    check (corr_type_code IN ('I' ,'L' ,'O' ,'P' ,'S' ,'W' )) constraint "informix".corr_type_code3
  );

