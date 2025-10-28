drop table if exists "informix".nt_cl_reason ;
create table "informix".nt_cl_reason 
  (
    nt_cl_reas_code char(2) not null ,
    nt_cl_reas_narr varchar(32,1) not null ,
    disp_order smallint 
        default 3 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

