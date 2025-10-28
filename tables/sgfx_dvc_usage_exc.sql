drop table if exists "informix".sgfx_dvc_usage_exc ;
create table "informix".sgfx_dvc_usage_exc 
  (
    dvc_usage_excpt_id serial not null ,
    status_id integer 
        default 0 not null ,
    device_id varchar(20),
    usage_year integer,
    usage_month integer,
    consump_id varchar(200),
    frmecnt integer,
    dwnlink_frmcnt integer,
    roam_frmecnt integer,
    roamdwnlnk_frmecnt integer,
    roam_territory1 varchar(10),
    roam_operator1 varchar(40),
    roam_frmecnt1 integer,
    rdwnlink_frmecnt1 integer,
    roam_territory2 varchar(10),
    roam_operator2 varchar(40),
    roam_frmecnt2 integer,
    rdwnlink_frmecnt2 integer,
    roam_territory3 varchar(10),
    roam_operator3 varchar(40),
    roam_frmecnt3 integer,
    rdwnlink_frmecnt3 integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((status_id >= 0 ) AND (status_id <= 5 ) ) constraint "informix".zero_five23
  );

