drop table if exists "informix".ord_agt_logon ;
create table "informix".ord_agt_logon 
  (
    rec_id serial not null ,
    contact_code char(10) not null ,
    logon_code char(18) not null ,
    logon_dt datetime year to second not null ,
    logoff_dt datetime year to second
  );

