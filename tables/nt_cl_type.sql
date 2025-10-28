drop table if exists "informix".nt_cl_type ;
create table "informix".nt_cl_type 
  (
    tar_class_code smallint not null ,
    sp_tar_class_cod varchar(30),
    gl_acctcode varchar(45),
    cost_gl_acctcode varchar(45),
    nt_cl_group_code char(2) not null ,
    sp_cl_group_code char(2) not null ,
    tar_class_narr char(50) not null ,
    nt_tar_class_nar char(50) not null ,
    print_on_invoice char(1) 
        default 'Y' not null ,
    print_code char(3),
    print_num_called char(30),
    print_rate char(5),
    display_order integer 
        default 3 not null ,
    rnd_meth_code char(2) not null ,
    unit char(1) not null ,
    taxtreatmentcode char(1) 
        default 'N' not null ,
    sp_usage_code varchar(20),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (print_on_invoice IN ('Y' ,'N' ,'Z' )) constraint "informix".yes_no
  );

