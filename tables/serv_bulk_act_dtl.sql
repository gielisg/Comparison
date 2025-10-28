drop table if exists "informix".serv_bulk_act_dtl ;
create table "informix".serv_bulk_act_dtl 
  (
    sb_act_dtl_id serial not null ,
    sbproc_id integer,
    sp_cn_ref integer,
    event_ref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

