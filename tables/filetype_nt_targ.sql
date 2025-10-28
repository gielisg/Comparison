drop table if exists "informix".filetype_nt_targ ;
create table "informix".filetype_nt_targ 
  (
    file_type_code char(10) not null ,
    nt_cust_num char(10) not null ,
    target_db char(18) not null ,
    apply_order integer 
        default 1 not null 
  );

