drop table if exists "informix".wta_cl_group ;
create table "informix".wta_cl_group 
  (
    wta_cl_grp_ref serial not null ,
    wta_ref integer not null ,
    sp_cl_group_code char(2) not null ,
    wta_clgrp_wef datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    wta_clgrp_wet datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

