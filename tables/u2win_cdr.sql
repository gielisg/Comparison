drop table if exists "informix".u2win_cdr ;
create table "informix".u2win_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    last_nm varchar(36) not null ,
    first_nm varchar(36) not null ,
    area_code varchar(10) not null ,
    alloc_num varchar(20) not null ,
    email varchar(200),
    inbound_plan integer not null ,
    inbound_allow integer,
    inbound_call integer,
    in_min_mtod decimal(10,2),
    out_call_mtod integer,
    fme_call_mtod integer,
    fme_min_mtod decimal(10,2),
    lop_call_mtod integer,
    lop_min_mtod decimal(10,2),
    lop_mob_mtod decimal(10,2),
    lop_land_mtod decimal(10,2),
    fax_recv_mtod integer,
    fax_page_mtod integer,
    groupid varchar(10),
    total_members integer,
    grp_allow integer,
    grp_call_mtod integer,
    grp_min_mtod decimal(10,2),
    min_billed decimal(10,2) not null ,
    rate_permin decimal(12,6),
    grporig_lastnm varchar(36),
    grporig_firstnm varchar(36)
  );

