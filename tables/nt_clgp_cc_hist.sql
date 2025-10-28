drop table if exists "informix".nt_clgp_cc_hist ;
create table "informix".nt_clgp_cc_hist 
  (
    nt_clgp_cchistid serial not null ,
    nt_cl_group_code char(2) not null ,
    cost_centreid integer not null ,
    nt_clgp_cc_hwefr datetime year to second not null ,
    nt_clgp_cc_hweto datetime year to second not null ,
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
    
    check ((percentage >= 0. ) AND (percentage <= 100. ) ) constraint "informix".percent35
  );

