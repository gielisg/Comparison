drop table if exists "informix".gsm_conn_action ;
create table "informix".gsm_conn_action 
  (
    gsm_act_code char(2) not null ,
    gsm_act_narr varchar(64,16) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

