drop table if exists "informix".ord_app_act_log ;
create table "informix".ord_app_act_log 
  (
    ord_id integer not null ,
    action_dt datetime year to second 
        default current year to second not null ,
    action_id integer not null ,
    ord_app_stp_id integer,
    ord_note varchar(254),
    ord_status_code char(2),
    logon_code varchar(18,10) 
        default user not null 
  );

