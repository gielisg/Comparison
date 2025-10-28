drop table if exists "informix".ord_pl_dsp_usr ;
create table "informix".ord_pl_dsp_usr 
  (
    pl_id integer not null ,
    logon_code varchar(18,10) not null 
  );

