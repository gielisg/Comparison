drop table if exists "informix".rch_autopurchase ;
create table "informix".rch_autopurchase 
  (
    auto_purch_ref serial not null ,
    rechrg_type_id integer not null ,
    sp_cn_ref integer not null ,
    rchautopurchtype smallint 
        default 0 not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    ovr_maincurr_amt decimal(16,2),
    triggerthreshold decimal(16,2) 
        default 0.00 not null ,
    status_id integer 
        default 0 not null ,
    max_num_rechrgs integer,
    day_of_month integer,
    note lvarchar(1024),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (((day_of_month >= 1 ) AND (day_of_month <= 31 ) ) OR (day_of_month IS NULL ) 
              ) constraint "informix".day_of_month_null9,
    
    check (from_dt <= to_dt ) constraint "informix".from_to33,
    
    check ((max_num_rechrgs IS NULL ) OR (max_num_rechrgs > 0 ) ) constraint "informix".null_positive9,
    
    check ((status_id >= 0 ) AND (status_id <= 1 ) ) constraint "informix".zero_one24,
    
    check ((rchautopurchtype >= 0 ) AND (rchautopurchtype <= 1 ) ) constraint "informix".zero_one9
  );

