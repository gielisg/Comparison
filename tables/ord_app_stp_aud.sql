drop table if exists "informix".ord_app_stp_aud ;
create table "informix".ord_app_stp_aud 
  (
    ord_app_stp_id integer not null ,
    status_dt datetime year to second 
        default current year to second not null ,
    status_id integer not null ,
    status_by varchar(18,10),
    status_reas_code char(2)
  );

