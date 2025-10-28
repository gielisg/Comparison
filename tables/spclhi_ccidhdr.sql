drop table if exists "informix".spclhi_ccidhdr ;
create table "informix".spclhi_ccidhdr 
  (
    spcl_ccidhdr_id serial not null ,
    ccinv_delhdr_id integer not null ,
    sp_clgp_cchistid integer,
    from_dt datetime year to second,
    to_dt datetime year to second,
    percentage decimal(7,4) 
        default 100.0000,
    amount decimal(12,6),
    tax decimal(12,6),
    
    check ((percentage >= 0. ) AND (percentage <= 100. ) ) constraint "informix".percent60
  );

