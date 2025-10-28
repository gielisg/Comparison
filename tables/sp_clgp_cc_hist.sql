drop table if exists "informix".sp_clgp_cc_hist ;
create table "informix".sp_clgp_cc_hist 
  (
    sp_clgp_cchistid serial not null ,
    sp_cl_group_code char(2) not null ,
    cost_centreid integer not null ,
    sp_clgp_cc_hwefr datetime year to second,
    sp_clgp_cc_hweto datetime year to second,
    start_billperiod integer,
    end_billperiod integer,
    percentage decimal(7,4) 
        default 100.0000 not null ,
    comments text,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((percentage >= 0. ) AND (percentage <= 100. ) ) constraint "informix".percent34,
    
    check (((((sp_clgp_cc_hwefr IS NOT NULL ) AND (sp_clgp_cc_hweto IS NOT NULL ) 
              ) AND (start_billperiod IS NULL ) ) AND (end_billperiod IS NULL ) ) 
              OR ((((sp_clgp_cc_hwefr IS NULL ) AND (sp_clgp_cc_hweto IS NULL ) ) 
              AND (start_billperiod IS NOT NULL ) ) AND (end_billperiod IS NOT NULL 
              ) ) ) constraint "informix".spclgpcchis_chk
  );

