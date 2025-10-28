drop table if exists "informix".file_type_nt ;
create table "informix".file_type_nt 
  (
    file_type_code char(10) not null ,
    nt_cust_num char(10) not null ,
    last_seq integer 
        default 0 not null ,
    default_bus_unit char(2),
    plan_code smallint,
    expected_freq char(1),
    freq_files integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (expected_freq IN ('W' ,'M' )) constraint "informix".expected_freq
  );

