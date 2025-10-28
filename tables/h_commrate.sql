drop table if exists "informix".h_commrate ;
create table "informix".h_commrate 
  (
    hcommrateid serial not null ,
    commrateid integer not null ,
    commratenarr varchar(128),
    dealer_id char(10),
    debtor_code char(10),
    sp_cn_ref integer,
    sp_cn_chg_ref integer,
    sp_cl_group_code char(2),
    grp_comm_rate_id integer,
    commratecommtype char(4) not null ,
    commrateprofit char(1) 
        default 'N' not null ,
    commrateexcluded char(1) 
        default 'N' not null ,
    plan_code smallint,
    invoice_grp char(2),
    commratewefr date not null ,
    commrateweto date not null ,
    commrateratetype char(4) not null ,
    commraterate decimal(10,4),
    autocommid integer,
    commsplanid integer,
    cr_created_tm datetime year to second not null ,
    cr_created_by varchar(18,10) not null ,
    cr_last_updated datetime year to second not null ,
    cr_updated_by varchar(18,10) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (commratecommtype IN ('ALL' ,'USAG' ,'CHRG' ,'PROF' ,'GRP' ,'PLAN' ,'CONN' )) 
              constraint "informix".commrate152,
    
    check (commrateratetype IN ('PERC' ,'FIXD' ,'GRP' )) constraint "informix".commrate252,
    
    check (commrateprofit IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (commrateexcluded IN ('Y' ,'N' )) constraint "informix".yes_no
  );

