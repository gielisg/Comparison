drop table if exists "informix".sp_cl_group ;
create table "informix".sp_cl_group 
  (
    sp_cl_group_code char(2) not null ,
    sp_cl_group_narr char(50) not null ,
    spcl_grpdispordr integer 
        default 3 not null ,
    spcl_category char(20),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

