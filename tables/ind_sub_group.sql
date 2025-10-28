drop table if exists "informix".ind_sub_group ;
create table "informix".ind_sub_group 
  (
    ind_sub_grp_code char(4) not null ,
    ind_sub_grp_narr varchar(254,30) not null ,
    industry_code char(4) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

