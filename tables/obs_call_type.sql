drop table if exists "informix".obs_call_type ;
create table "informix".obs_call_type 
  (
    call_type_code varchar(10) not null ,
    format_code char(3),
    call_type_desc varchar(80),
    serv_type_desc varchar(60),
    ebs_trans_type varchar(10)
  );

