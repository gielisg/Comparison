drop table if exists "informix".sgfx_usage_dtl ;
create table "informix".sgfx_usage_dtl 
  (
    usage_dtl_id serial not null ,
    usage_id integer,
    day_of_month smallint,
    frmecnt integer,
    dwnlink_frmcnt integer,
    roam_frmecnt integer,
    roamdwnlnk_frmecnt integer,
    
    check ((day_of_month >= 1 ) AND (day_of_month <= 31 ) ) constraint "informix".day_of_month83
  );

