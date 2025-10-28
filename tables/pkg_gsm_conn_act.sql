drop table if exists "informix".pkg_gsm_conn_act ;
create table "informix".pkg_gsm_conn_act 
  (
    pkg_gsm_conn_ref serial not null ,
    pkg_code integer not null ,
    option smallint not null ,
    gsm_act_code char(2) not null ,
    enabled char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

