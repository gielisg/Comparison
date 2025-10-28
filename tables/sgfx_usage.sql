drop table if exists "informix".sgfx_usage ;
create table "informix".sgfx_usage 
  (
    usage_id serial not null ,
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
    overusage_count smallint 
        default 0,
    
    check ((status_id >= 0 ) AND (status_id <= 5 ) ) constraint "informix".zero_five34
  );

