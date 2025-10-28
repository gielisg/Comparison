drop table if exists "informix".sp_cn_cc_hist ;
create table "informix".sp_cn_cc_hist 
  (
    sp_cn_cc_histid serial not null ,
    sp_cn_ref integer not null ,
    cost_centreid integer not null ,
    sp_cn_cc_histwef datetime year to second,
    sp_cn_cc_histwet datetime year to second,
    start_billperiod integer,
    end_billperiod integer,
    percentage decimal(7,4) 
        default 100.0000 not null ,
    comments lvarchar(2000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((percentage >= 0. ) AND (percentage <= 100. ) ) constraint "informix".percent23,
    
    check (((((sp_cn_cc_histwef IS NOT NULL ) AND (sp_cn_cc_histwet IS NOT NULL ) 
              ) AND (start_billperiod IS NULL ) ) AND (end_billperiod IS NULL ) ) 
              OR ((((sp_cn_cc_histwef IS NULL ) AND (sp_cn_cc_histwet IS NULL ) ) 
              AND (start_billperiod IS NOT NULL ) ) AND (end_billperiod IS NOT NULL 
              ) ) ) constraint "informix".spcncchist_chk
  );

