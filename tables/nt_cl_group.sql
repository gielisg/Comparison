drop table if exists "informix".nt_cl_group ;
create table "informix".nt_cl_group 
  (
    nt_cl_group_code char(2) not null ,
    nt_cl_group_narr char(50) not null ,
    ntcl_grpdispordr integer 
        default 3 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

