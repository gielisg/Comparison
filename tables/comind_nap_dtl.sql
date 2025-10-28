drop table if exists "informix".comind_nap_dtl ;
create table "informix".comind_nap_dtl 
  (
    nap_hdr_id integer not null ,
    sp_cn_ref integer not null ,
    sp_cn_chg_ref integer not null ,
    from_dt datetime year to second not null ,
    to_dt datetime year to second not null ,
    bandwidth decimal(14,6) not null ,
    default_amount decimal(12,6),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

