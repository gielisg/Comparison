drop table if exists "informix".ord_app_stp_typs ;
create table "informix".ord_app_stp_typs 
  (
    step_type integer not null ,
    step_narr varchar(32) not null ,
    step_dll varchar(50,20),
    ui_dll varchar(50,10),
    timeout integer,
    grp_id integer,
    async char(1),
    required char(1)
  );

