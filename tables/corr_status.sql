drop table if exists "informix".corr_status ;
create table "informix".corr_status 
  (
    corr_status_code char(1) not null ,
    corr_stat_narr varchar(64),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (corr_status_code IN ('C' ,'E' ,'H' ,'O' ,'R' ,'U' ,'S' )) constraint "informix".corr_stat_code
  );

