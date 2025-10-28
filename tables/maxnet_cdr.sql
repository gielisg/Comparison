drop table if exists "informix".maxnet_cdr ;
create table "informix".maxnet_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    username varchar(150) not null ,
    cur_plan varchar(150) not null ,
    acct_allow decimal(12,3) not null ,
    cancell_bill char(3),
    gb_used decimal(16,11) not null ,
    excess_used char(1) not null ,
    dialup_used decimal(16,11),
    dt_last_order datetime year to second,
    last_ord_type varchar(150),
    oldat_last3mon datetime year to second,
    oldat_lastmon datetime year to second,
    last_at_mon datetime year to second,
    last_upd_mon datetime year to second,
    call_type char(1) not null ,
    org_rec_num integer not null 
  );

