drop table if exists "informix".cont_add_info ;
create table "informix".cont_add_info 
  (
    contact_code char(10) not null ,
    class_id integer,
    source_id integer,
    data_summ_flg char(1) 
        default 'N' not null ,
    salesperson char(10),
    media_code char(4),
    industry_code char(4),
    ind_sub_grp_code char(4),
    category_code char(4),
    priority integer,
    report_plan_id integer,
    gl_acctcode varchar(45),
    logon_blocked char(1) 
        default 'N' not null ,
    tip_of_the_day char(1) 
        default 'Y' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (data_summ_flg IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (logon_blocked IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (tip_of_the_day IN ('Y' ,'N' )) constraint "informix".yes_no
  );

