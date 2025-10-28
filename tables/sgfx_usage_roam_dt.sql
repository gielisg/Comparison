drop table if exists "informix".sgfx_usage_roam_dt ;
create table "informix".sgfx_usage_roam_dt 
  (
    id serial not null ,
    usage_dtl_id integer,
    roam_territory varchar(10),
    roam_operator varchar(40),
    roam_frmecnt integer,
    rdwnlink_frmecnt integer
  );

